# Install script for Katifetch for Windows

$targetDir = "$env:USERPROFILE\katifetch"
if (-Not (Test-Path $targetDir)) {
    New-Item -ItemType Directory -Path $targetDir
}

Copy-Item -Path ".\katifetchforwindows.ps1" -Destination "$targetDir\katifetch.ps1" -Force

# Optional: Add a shortcut or alias
$profilePath = "$PROFILE"
$alias = "function katifetch { & '$targetDir\katifetch.ps1' }"

if (-Not (Select-String -Path $profilePath -Pattern "katifetch.ps1")) {
    Add-Content -Path $profilePath -Value "`n$alias"
    Write-Host "✅ Katifetch for Windows installed. Restart PowerShell to use the 'katifetch' command." -ForegroundColor Green
} else {
    Write-Host "ℹ️ Katifetch already installed in PowerShell profile." -ForegroundColor Yellow
}

Write-Host "🚀 Run it using: katifetch" -ForegroundColor Cyan

Write-Host ""
Write-Host @'
      ___           ___                                                    ___                         ___           ___     
     /  /\         /  /\          ___            ___         ___          /  /\          ___          /  /\         /  /\    
    /  /:/        /  /::\        /__/\          /__/\       /  /\        /  /::\        /__/\        /  /::\       /  /:/    
   /  /:/        /  /:/\:\       \  \:\         \__\:\     /  /::\      /  /:/\:\       \  \:\      /  /:/\:\     /  /:/     
  /  /::\____   /  /::\ \:\       \__\:\        /  /::\   /  /:/\:\    /  /::\ \:\       \__\:\    /  /:/  \:\   /  /::\ ___ 
 /__/:/\:::::\ /__/:/\:\_\:\      /  /::\    __/  /:/\/  /  /::\ \:\  /__/:/\:\ \:\      /  /::\  /__/:/ \  \:\ /__/:/\:\  /\
 \__\/~|:|~~~~ \__\/  \:\/:/     /  /:/\:\  /__/\/:/~~  /__/:/\:\ \:\ \  \:\ \:\_\/     /  /:/\:\ \  \:\  \__\/ \__\/  \:\/:/
    |  |:|          \__\::/     /  /:/__\/  \  \::/     \__\/  \:\_\/  \  \:\ \:\      /  /:/__\/  \  \:\            \__\::/ 
    |  |:|          /  /:/     /__/:/        \  \:\          \  \:\     \  \:\_\/     /__/:/        \  \:\           /  /:/  
    |__|:|         /__/:/      \__\/          \__\/           \__\/      \  \:\       \__\/          \  \:\         /__/:/   
     \__\|         \__\/                                                  \__\/                       \__\/         \__\/    
     Katifetch for Windows
'@ -ForegroundColor Cyan
Write-Host ""
