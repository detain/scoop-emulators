#Requires -Version 5.1

# SCOOP_HOME is set by the CI workflow to point to the Scoop core checkout,
# which contains the schema, the validator DLL and the file-style tests.
#
# This replaces Scoop's Import-Bucket-Tests.ps1, whose CI path calls
# BuildHelpers' Get-GitChangedFile. That function's Invoke-Git waits for git to
# exit before reading its output, so a commit touching more than ~100 files
# fills the pipe buffer and the job deadlocks until GitHub kills it.
#
#   .\bin\test.ps1               CI: manifests changed in the last commit; locally: all manifests
#   .\bin\test.ps1 -All          validate every manifest
#   .\bin\test.ps1 -ListFile f   (internal) validate the manifests listed in file f

param(
    [switch] $All,
    [string] $ListFile
)

$ErrorActionPreference = 'Stop'
if (!$env:SCOOP_HOME) { throw 'SCOOP_HOME must point to a Scoop core checkout' }

function Test-ManifestList([string[]] $Files) {
    Add-Type -Path "$env:SCOOP_HOME\supporting\validator\bin\Scoop.Validator.dll"
    $validator = New-Object Scoop.Validator("$env:SCOOP_HOME\schema.json", $true)
    $bad = 0
    foreach ($file in $Files) {
        try {
            if ($validator.Validate($file)) { continue }
            Write-Host "  [-] $file has $($validator.Errors.Count) error(s)" -ForegroundColor Red
            Write-Host $validator.ErrorsAsString -ForegroundColor Yellow
        } catch {
            Write-Host "  [-] $file : $($_.Exception.Message)" -ForegroundColor Red
        }
        $bad++
    }
    return $bad
}

# Child-process mode: the validator allows 1000 validations per process, so
# large sets are split across processes by the main script.
if ($ListFile) {
    $bad = Test-ManifestList (Get-Content -LiteralPath $ListFile)
    exit $bad
}

$repo = (Resolve-Path "$PSScriptRoot\..").Path

# 1. Syntax and file-style checks for the helper scripts (same scope as before).
#    Pester is imported here rather than via #Requires: a script with
#    '#Requires -Modules Pester' always exits 0, which would hide failures
#    reported by the validator child processes.
Import-Module Pester -MinimumVersion 5.2.0 -ErrorAction Stop
$container = New-PesterContainer -Path "$env:SCOOP_HOME\test\Scoop-00File.Tests.ps1" -Data @{ TestPath = $PSScriptRoot }
$pester = Invoke-Pester -Container $container -Output Detailed -PassThru
if ($pester.FailedCount -gt 0) {
    Write-Host "$($pester.FailedCount) file test(s) failed" -ForegroundColor Red
    exit 1
}

# 2. Schema validation of manifests. Native git calls are read asynchronously by
#    PowerShell, so large diffs can't deadlock here.
Push-Location $repo
try {
    $changedOnly = $env:CI -eq 'true' -and -not $All
    if ($changedOnly) {
        git rev-parse --verify --quiet HEAD~1 *> $null
        if ($LASTEXITCODE -eq 0) {
            $rel = @(git -c core.quotepath=off diff --name-only --diff-filter=AMR HEAD~1 HEAD -- 'bucket/*.json')
        } else {
            $changedOnly = $false
        }
    }
    if (-not $changedOnly) {
        $rel = @(git -c core.quotepath=off ls-files -- 'bucket/*.json')
    }
} finally {
    Pop-Location
}
$files = @($rel | Where-Object { $_ -and $_ -notmatch 'retrobat-gamelist-backup' } |
        ForEach-Object { Join-Path $repo $_ } | Where-Object { Test-Path -LiteralPath $_ })

$scope = if ($changedOnly) { 'changed in the last commit' } else { 'in the bucket' }
Write-Host "Validating $($files.Count) manifest(s) $scope against the schema"
if ($files.Count -eq 0) { exit 0 }

$chunkSize = 900
$exe = (Get-Process -Id $PID).Path
$bad = 0
for ($i = 0; $i -lt $files.Count; $i += $chunkSize) {
    $chunk = $files[$i..([Math]::Min($i + $chunkSize, $files.Count) - 1)]
    $list = [IO.Path]::GetTempFileName()
    try {
        Set-Content -LiteralPath $list -Value $chunk -Encoding UTF8
        & $exe -NoProfile -ExecutionPolicy Bypass -File $PSCommandPath -ListFile $list
        $bad += $LASTEXITCODE
    } finally {
        Remove-Item -LiteralPath $list -ErrorAction SilentlyContinue
    }
}

if ($bad -gt 0) {
    Write-Host "$bad manifest(s) failed schema validation" -ForegroundColor Red
    exit 1
}
Write-Host "All $($files.Count) manifest(s) are valid" -ForegroundColor Green
exit 0
