# Katifetch for Windows - Universal (XP to Win11, x86/x64)
# Total compatibility: PowerShell 2.0+

# List of colors (XP safe)
$colors = @("Cyan", "Magenta", "Yellow", "Green", "Blue", "White", "Red")

function Get-RandomColor {
    $colors[ (Get-Random -Minimum 0 -Maximum $colors.Count) ]
}

# Choose colors
$lineColor = Get-RandomColor
$titleColor = Get-RandomColor
$asciiColor = Get-RandomColor

while ($titleColor -eq $lineColor) {
    $titleColor = Get-RandomColor
}

# System info
$osInfo = Get-WmiObject Win32_OperatingSystem
$cpuInfo = Get-WmiObject Win32_Processor
$gpuInfo = Get-WmiObject Win32_VideoController | Select-Object -First 1
$csInfo  = Get-WmiObject Win32_ComputerSystem

$os        = $osInfo.Caption
$osVersion = $osInfo.Version
$cpu       = $cpuInfo.Name
$gpu       = $gpuInfo.Name
$brand     = $csInfo.Manufacturer
$model     = $csInfo.Model

# RAM
$memoryTotal = [math]::Round($csInfo.TotalPhysicalMemory / 1GB, 2)

# ---------- XP SAFE UPTIME FIX ----------
$lastBoot = $osInfo.LastBootUpTime
# Katifetch for Windows - Universal (XP to Win11, x86/x64)
# Total compatibility: PowerShell 2.0+

# List of colors (XP safe)
$colors = @("Cyan", "Magenta", "Yellow", "Green", "Blue", "White", "Red")

function Get-RandomColor {
    $colors[ (Get-Random -Minimum 0 -Maximum $colors.Count) ]
}

# Choose colors
$lineColor = Get-RandomColor
$titleColor = Get-RandomColor
$asciiColor = Get-RandomColor

while ($titleColor -eq $lineColor) {
    $titleColor = Get-RandomColor
}

# System info
$osInfo = Get-WmiObject Win32_OperatingSystem
$cpuInfo = Get-WmiObject Win32_Processor
$gpuInfo = Get-WmiObject Win32_VideoController | Select-Object -First 1
$csInfo  = Get-WmiObject Win32_ComputerSystem

$os        = $osInfo.Caption
$osVersion = $osInfo.Version
$cpu       = $cpuInfo.Name
$gpu       = $gpuInfo.Name
$brand     = $csInfo.Manufacturer
$model     = $csInfo.Model

# RAM
$memoryTotal = [math]::Round($csInfo.TotalPhysicalMemory / 1GB, 2)

# ---------- XP SAFE UPTIME FIX ----------
$lastBoot = $osInfo.LastBootUpTime
$boot = [System.Management.ManagementDateTimeConverter]::ToDateTime($lastBoot)
$now = Get-Date
$uptimeSpan = New-TimeSpan -Start $boot -End $now
$uptimeFormatted = "{0}d {1}h {2}m {3}s" -f $uptimeSpan.Days, $uptimeSpan.Hours, $uptimeSpan.Minutes, $uptimeSpan.Seconds
# -----------------------------------------

$user = $env:USERNAME
$hostname = $env:COMPUTERNAME

# Architecture detection (XP fix)
$arch = if ([Environment]::Is64BitOperatingSystem) { "64-bit" } else { "32-bit" }

# ASCII Logo
Write-Host ""
Write-Host @"
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
"@ -ForegroundColor $asciiColor

Write-Host "`n==============================" -ForegroundColor $lineColor
Write-Host "         Katifetch" -ForegroundColor $titleColor
Write-Host "==============================" -ForegroundColor $lineColor

Write-Host "User:      $user" -ForegroundColor Green
Write-Host "Hostname:  $hostname" -ForegroundColor Yellow
Write-Host "Brand:     $brand" -ForegroundColor Cyan
Write-Host "Model:     $model" -ForegroundColor White
Write-Host "OS:        $os" -ForegroundColor Magenta
Write-Host "Version:   $osVersion" -ForegroundColor Blue
Write-Host "CPU:       $cpu" -ForegroundColor Red
Write-Host "GPU:       $gpu" -ForegroundColor White
Write-Host "Memory:    $memoryTotal GB" -ForegroundColor Green
Write-Host "Uptime:    $uptimeFormatted" -ForegroundColor Yellow
Write-Host "Arch:      $arch" -ForegroundColor Cyan
