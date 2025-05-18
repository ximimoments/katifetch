# Install script for Katifetch for Windows

$targetDir = "$env:USERPROFILE\katifetch"
if (-Not (Test-Path $targetDir)) {
    New-Item -ItemType Directory -Path $targetDir | Out-Null
}

Copy-Item -Path ".\katifetchforwindows.ps1" -Destination "$targetDir\katifetchforwindows.ps1" -Force

# Add alias to PowerShell profile
$profilePath = "$PROFILE"
$alias = "function katifetch { & '$targetDir\katifetchforwindows.ps1' }"

if (-Not (Test-Path $profilePath)) {
    New-Item -ItemType File -Path $profilePath -Force | Out-Null
}

if (-Not (Get-Content $profilePath | Select-String -Pattern "katifetchforwindows.ps1")) {
    Add-Content -Path $profilePath -Value "`n$alias"
    Write-Host "✅ Katifetch for Windows installed. Restart PowerShell to use the 'katifetch' command." -ForegroundColor Green
} else {
    Write-Host "ℹ️ Katifetch already installed in PowerShell profile." -ForegroundColor Yellow
}

Write-Host "🚀 Run it using: katifetch" -ForegroundColor Cyan
