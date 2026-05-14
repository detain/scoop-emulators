#Requires -Version 5.1
<#
.SYNOPSIS
    Scoop Emulators Bucket Validator
.DESCRIPTION
    Run this script on Windows to validate the scoop-emulators bucket.
    Outputs issues to console and creates fix scripts.
.EXAMPLE
    .\bin\validate_bucket.ps1
#>

param(
    [string]$BucketPath = ".\bucket",
    [switch]$GenerateFixes
)

$ErrorActionPreference = "Continue"
$issues = @()

Write-Host "=== Scoop Emulators Bucket Validator ===" -ForegroundColor Cyan
Write-Host ""

# Helper function to safely parse JSON with better error handling
function Safe-ConvertFrom-Json {
    param([string]$Path)
    try {
        # Try to fix common line ending issues first
        $content = Get-Content -Path $Path -Raw -Encoding UTF8
        $content = $content -replace "`r`n", "`n"  # Normalize line endings
        return @{ Success = $true; Data = ($content | ConvertFrom-Json) }
    } catch {
        return @{ Success = $false; Error = $_.Exception.Message; Path = $Path }
    }
}

# 1. Check for empty descriptions
Write-Host "[1/6] Checking for empty descriptions..." -ForegroundColor Yellow
$emptyDesc = @()
foreach ($file in Get-ChildItem -Path $BucketPath -Recurse -Filter "*.json") {
    $result = Safe-ConvertFrom-Json -Path $file.FullName
    if ($result.Success) {
        if ([string]::IsNullOrWhiteSpace($result.Data.description)) {
            $emptyDesc += $file.FullName
        }
    }
}
if ($emptyDesc.Count -gt 0) {
    Write-Host "  FOUND $($emptyDesc.Count) manifests with empty descriptions" -ForegroundColor Red
    $emptyDesc | ForEach-Object { $issues += "Empty description: $_" }
} else {
    Write-Host "  OK - No empty descriptions found" -ForegroundColor Green
}

# 2. Check for invalid JSON
Write-Host "[2/6] Checking for invalid JSON..." -ForegroundColor Yellow
$invalidJson = @()
foreach ($file in Get-ChildItem -Path $BucketPath -Recurse -Filter "*.json") {
    $result = Safe-ConvertFrom-Json -Path $file.FullName
    if (-not $result.Success) {
        $invalidJson += $file.FullName
        Write-Host "    Invalid: $($file.Name) - $($result.Error.Split('.')[0])" -ForegroundColor DarkYellow
    }
}
if ($invalidJson.Count -gt 0) {
    Write-Host "  FOUND $($invalidJson.Count) invalid JSON files" -ForegroundColor Red
    $invalidJson | ForEach-Object { $issues += "Invalid JSON: $_" }
} else {
    Write-Host "  OK - All JSON is valid" -ForegroundColor Green
}

# 3. Check for missing version field
Write-Host "[3/6] Checking for missing version field..." -ForegroundColor Yellow
$missingVersion = @()
foreach ($file in Get-ChildItem -Path $BucketPath -Recurse -Filter "*.json") {
    $result = Safe-ConvertFrom-Json -Path $file.FullName
    if ($result.Success -and -not $result.Data.version) {
        $missingVersion += $file.FullName
    }
}
if ($missingVersion.Count -gt 0) {
    Write-Host "  FOUND $($missingVersion.Count) manifests missing version" -ForegroundColor Red
    $missingVersion | ForEach-Object { $issues += "Missing version: $_" }
} else {
    Write-Host "  OK - All manifests have version" -ForegroundColor Green
}

# 4. Check for non-SPDX licenses
Write-Host "[4/6] Checking for non-SPDX licenses..." -ForegroundColor Yellow
$nonSpdx = @()
foreach ($file in Get-ChildItem -Path $BucketPath -Recurse -Filter "*.json") {
    $result = Safe-ConvertFrom-Json -Path $file.FullName
    if ($result.Success) {
        $license = $result.Data.license
        if ($license -match '(GNU\s+GPL|GPLv|Open\s+Source|Shareware)' -and $license -notmatch 'http') {
            $relativePath = $file.FullName -replace [regex]::Escape((Get-Location).Path + '\'), '.\'
            $nonSpdx += [PSCustomObject]@{
                File = $relativePath
                License = $license
                Suggested = ($license -replace 'GNU\s+', '' -replace 'GPLv', 'GPL-')
            }
        }
    }
}
if ($nonSpdx.Count -gt 0) {
    Write-Host "  FOUND $($nonSpdx.Count) manifests with non-SPDX licenses" -ForegroundColor Red
    $issues += "See non_spdx_licenses.csv for details"
    $nonSpdx | Export-Csv -Path "non_spdx_licenses.csv" -NoTypeInformation
    Write-Host "  Exported to non_spdx_licenses.csv" -ForegroundColor Cyan
} else {
    Write-Host "  OK - All licenses are SPDX compliant" -ForegroundColor Green
}

# 5. Check for external autoupdate references
Write-Host "[5/6] Checking for external autoupdate references..." -ForegroundColor Yellow
$externalRefs = @()
foreach ($file in Get-ChildItem -Path $BucketPath -Recurse -Filter "*.json") {
    $content = Get-Content -Path $file.FullName -Raw -Encoding UTF8
    if ($content -match 'raw\.githubusercontent\.com/[^/]+/[^/]+/[^/]+/bucket/') {
        $externalRefs += $file.FullName
    }
}
if ($externalRefs.Count -gt 0) {
    Write-Host "  FOUND $($externalRefs.Count) manifests with external references" -ForegroundColor Red
    $externalRefs | ForEach-Object { $issues += "External autoupdate: $_" }
} else {
    Write-Host "  OK - No external references found" -ForegroundColor Green
}

# 6. Check URLs are accessible (sample check)
Write-Host "[6/6] Running URL validation (sample)..." -ForegroundColor Yellow
$sampleFiles = Get-ChildItem -Path $BucketPath -Recurse -Filter "*.json" | Get-Random -Count 20
$urlIssues = @()
foreach ($file in $sampleFiles) {
    $result = Safe-ConvertFrom-Json -Path $file.FullName
    if ($result.Success -and $result.Data.url) {
        $url = $result.Data.url
        # Extract full URL using proper regex
        if ($url -match 'https?://[^\s"''<>]+') {
            $fullUrl = $matches[0].TrimEnd('"', "'", ',')
            try {
                $response = Invoke-WebRequest -Uri $fullUrl -Method Head -TimeoutSec 10 -ErrorAction Stop
                if ($response.StatusCode -ge 400) {
                    $urlIssues += "$($file.Name): $fullUrl returned $($response.StatusCode)"
                }
            } catch {
                $urlIssues += "$($file.Name): $fullUrl - $($_.Exception.Message.Split('.')[0])"
            }
        }
    }
}
if ($urlIssues.Count -gt 0) {
    Write-Host "  FOUND $($urlIssues.Count) URL issues (in sample)" -ForegroundColor Yellow
    $urlIssues | ForEach-Object { Write-Host "    $_" -ForegroundColor DarkYellow }
} else {
    Write-Host "  OK - Sample URLs are accessible" -ForegroundColor Green
}

# Summary
Write-Host ""
Write-Host "=== SUMMARY ===" -ForegroundColor Cyan
if ($issues.Count -eq 0) {
    Write-Host "No issues found!" -ForegroundColor Green
} else {
    Write-Host "Found $($issues.Count) issue categories:" -ForegroundColor Red
    $issues | ForEach-Object { Write-Host "  - $_" }
    $issues | Export-Clixml -Path "validation_issues.xml"
    Write-Host ""
    Write-Host "Exported issues to validation_issues.xml" -ForegroundColor Cyan
}

# Generate fix script if requested
if ($GenerateFixes -and $nonSpdx) {
    $fixScript = @"
# Fix non-SPDX licenses
`$licenses = Import-Csv -Path "non_spdx_licenses.csv"

`$licenseMap = @{
    'GNU GPLv2' = 'GPL-2.0-or-later'
    'GNU GPLv3' = 'GPL-3.0-or-later'
    'GPLv2' = 'GPL-2.0-or-later'
    'GPLv3' = 'GPL-3.0-or-later'
    'GPL-2.0-only' = 'GPL-2.0-only'
    'GPL-3.0-only' = 'GPL-3.0-only'
    'GPL-2.0' = 'GPL-2.0-only'
    'GPL-3.0' = 'GPL-3.0-only'
    'Open Source' = 'MIT'
    'Shareware' = 'Shareware'
    'GNU GPL' = 'GPL-2.0-or-later'
}

foreach (`$item in `$licenses) {
    `$file = `$item.File
    `$oldLicense = `$item.License
    `$newLicense = `$licenseMap[`$oldLicense]
    if (`$newLicense) {
        `$content = Get-Content `$file -Raw
        `$content = `$content -replace [regex]::Escape("`"`"license`"`": `"`"$oldLicense`"`""), "`"`"license`"`": `"`"$newLicense`"`""
        Set-Content -Path `$file -Value `$content -NoNewline -Encoding UTF8
        Write-Host "Fixed: `$file -> `$newLicense"
    }
}
"@

    $fixScript | Out-File -FilePath "fix_licenses.ps1" -Encoding UTF8
    Write-Host ""
    Write-Host "Generated fix_licenses.ps1 - run this to auto-fix license identifiers" -ForegroundColor Cyan
}
