# Auto-fix non-SPDX licenses in scoop-emulators bucket
# Run this from the bucket directory on Windows
# Backup your files first!

$ErrorActionPreference = "Stop"

$licenseMap = @{
    "GNU GPLv2"        = "GPL-2.0-or-later"
    "GNU GPLv3"        = "GPL-3.0-or-later"
    "GNU GPL"          = "GPL-2.0-or-later"
    "GPLv2"            = "GPL-2.0-or-later"
    "GPLv3"            = "GPL-3.0-or-later"
    "GPL-2.0"          = "GPL-2.0-only"
    "GPL-3.0"          = "GPL-3.0-only"
    "Open Source"      = "MIT"
}

$fixed = 0
$skipped = 0

Get-ChildItem -Recurse -Filter "*.json" | ForEach-Object {
    $content = Get-Content $_.FullName -Raw
    $original = $content

    foreach ($old in $licenseMap.Keys) {
        $new = $licenseMap[$old]
        if ($content -match [regex]::Escape($old)) {
            $content = $content -replace [regex]::Escape("`"$old"`""), "`"$new`""
            Write-Host "Fixed: $($_.Name) -> $new" -ForegroundColor Yellow
        }
    }

    if ($content -ne $original) {
        Set-Content -Path $_.FullName -Value $content -NoNewline -Encoding UTF8
        $fixed++
    } else {
        $skipped++
    }
}

Write-Host ""
Write-Host "Done! Fixed: $fixed, Skipped: $skipped" -ForegroundColor Green
