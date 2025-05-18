# Uninstall script for Katifetch for Windows

$targetDir = "$env:USERPROFILE\katifetch"
$profilePath = "$PROFILE"

# Remove alias from profile
if (Test-Path $profilePath) {
    $profileContent = Get-Content $profilePath
    $filteredContent = $profileContent | Where-Object { $_ -notmatch "katifetchforwindows.ps1" }
    Set-Content -Path $profilePath -Value $filteredContent
    Write-Host "🧹 Alias removed from PowerShell profile." -ForegroundColor Yellow
}

# Remove installed script
if (Test-Path $targetDir) {
    Remove-Item -Recurse -Force -Path $targetDir
    Write-Host "❌ Katifetch script folder deleted." -ForegroundColor Red
}

Write-Host "✅ Katifetch has been uninstalled." -ForegroundColor Green
