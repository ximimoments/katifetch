Clear-Host
Write-Host "========================================="
Write-Host "      Katifetch for Windows Installer"
Write-Host "=========================================`n"

Write-Host "1) Install Katifetch (x86)"
Write-Host "2) Install Katifetch (x64)"
Write-Host "3) Run Katifetch"
Write-Host "4) Update Katifetch"
Write-Host "5) Uninstall Katifetch"
Write-Host "0) Exit"
Write-Host ""
$choice = Read-Host "Choose an option"

# Ruta del launcher global
$launcher = "C:\Windows\katifetch.bat"

switch ($choice) {

    "1" {
        $path = "C:\katifetch_x86"
        New-Item $path -ItemType Directory -Force | Out-Null
        Copy-Item ".\katifetchforwindows.ps1" "$path\katifetch.ps1" -Force

        # Crear launcher para katifetch
        "@echo off`npowershell -ExecutionPolicy Bypass -File `"$path\katifetch.ps1`"" | Out-File $launcher -Encoding ASCII -Force

        Write-Host "Katifetch x86 installed."
        Write-Host "Run it using: katifetch"
    }

    "2" {
        $path = "C:\katifetch_x64"
        New-Item $path -ItemType Directory -Force | Out-Null
        Copy-Item ".\katifetchforwindows.ps1" "$path\katifetch.ps1" -Force

        # Crear launcher
        "@echo off`npowershell -ExecutionPolicy Bypass -File `"$path\katifetch.ps1`"" | Out-File $launcher -Encoding ASCII -Force

        Write-Host "Katifetch x64 installed."
        Write-Host "Run it using: katifetch"
    }

    "3" {
        if (Test-Path $launcher) {
            & $launcher
        } else {
            Write-Host "Katifetch not installed."
        }
    }

    "4" {
        Copy-Item ".\katifetchforwindows.ps1" "C:\katifetch_x86\katifetch.ps1" -Force -ErrorAction SilentlyContinue
        Copy-Item ".\katifetchforwindows.ps1" "C:\katifetch_x64\katifetch.ps1" -Force -ErrorAction SilentlyContinue
        Write-Host "Updated!"
    }

    "5" {
        if (Test-Path $launcher) { Remove-Item $launcher -Force }
        Remove-Item "C:\katifetch_x86" -Recurse -Force -ErrorAction SilentlyContinue
        Remove-Item "C:\katifetch_x64" -Recurse -Force -ErrorAction SilentlyContinue
        Write-Host "Uninstalled."
    }

    "0" { exit }

    default { Write-Host "Invalid option." }
}
