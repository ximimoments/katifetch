# Katifetch Update Script for Windows

$repoURL = "https://github.com/ximimoments/katifetch"
$targetDir = "$env:USERPROFILE\katifetch"
$tempDir = "$env:TEMP\katifetch-update"

# Confirm update
$confirmation = Read-Host "Are you sure you want to update Katifetch? (y/n)"
if ($confirmation -ne "y") {
    Write-Host "❌ Update cancelled." -ForegroundColor Red
    exit
}

# Clean temp and clone
if (Test-Path $tempDir) {
    Remove-Item -Recurse -Force $tempDir
}
git clone --depth=1 $repoURL $tempDir

if (-Not (Test-Path "$tempDir\katifetchforwindows.ps1")) {
    Write-Host "❌ Update failed. Script not found in repository." -ForegroundColor Red
    exit 1
}

# Replace old script
Copy-Item -Path "$tempDir\katifetchforwindows.ps1" -Destination "$targetDir\katifetch.ps1" -Force
Remove-Item -Recurse -Force $tempDir

Write-Host "✅ Katifetch for Windows has been updated!" -ForegroundColor Green
