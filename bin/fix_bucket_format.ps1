# Fix BOM and newline issues in bucket JSON files
# Run from the repository root on Windows

$ErrorActionPreference = "Continue"

$fixedBOM = 0
$fixedNewline = 0
$skipped = 0

Write-Host "Fixing JSON file issues..." -ForegroundColor Cyan

Get-ChildItem -Path "bucket" -Recurse -Filter "*.json" | ForEach-Object {
    $filePath = $_.FullName
    $content = Get-Content -Path $filePath -Raw -Encoding UTF8
    $modified = $false

    # Fix 1: Remove UTF-8 BOM (EF BB BF)
    if ($content.StartsWith([char]0xEF -bAnd [char]0xBB -bAnd [char]0xBF)) {
        $content = $content.Substring(3)
        $modified = $true
        $fixedBOM++
        Write-Host "Fixed BOM: $($_.Name)" -ForegroundColor Yellow
    }

    # Fix 2: Ensure file ends with newline
    if (-not $content.EndsWith("`n")) {
        $content = $content.TrimEnd() + "`n"
        $modified = $true
        $fixedNewline++
        Write-Host "Fixed newline: $($_.Name)" -ForegroundColor Yellow
    }

    if ($modified) {
        Set-Content -Path $filePath -Value $content -NoNewline -Encoding UTF8
    } else {
        $skipped++
    }
}

Write-Host ""
Write-Host "Done!" -ForegroundColor Green
Write-Host "  Fixed BOM: $fixedBOM"
Write-Host "  Fixed newlines: $fixedNewline"
Write-Host "  Skipped (no issues): $skipped"
