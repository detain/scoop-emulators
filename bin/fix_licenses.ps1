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
    $filePath = $_.FullName
    $content = Get-Content -Path $filePath -Raw -Encoding UTF8
    $original = $content

    foreach ($oldLicense in $licenseMap.Keys) {
        $newLicense = $licenseMap[$oldLicense]
        # Match the license value with quotes around it
        $pattern = '"' + [regex]::Escape($oldLicense) + '"'
        $replacement = '"' + $newLicense + '"'

        if ($content -match $pattern) {
            $content = $content -replace $pattern, $replacement
            Write-Host "Fixed: $($_.Name) -> $newLicense" -ForegroundColor Yellow
        }
    }

    if ($content -ne $original) {
        Set-Content -Path $filePath -Value $content -NoNewline -Encoding UTF8
        $fixed++
    } else {
        $skipped++
    }
}

Write-Host ""
Write-Host "Done! Fixed: $fixed, Skipped: $skipped" -ForegroundColor Green
