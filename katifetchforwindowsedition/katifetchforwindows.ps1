# Katifetch for Windows - Enhanced PowerShell Version

# Lista de colores posibles
$colors = @("Cyan", "Magenta", "Yellow", "Green", "Blue", "White", "Red")

# Función para obtener un color aleatorio
function Get-RandomColor {
    return Get-Random -InputObject $colors
}

# Elegimos colores aleatorios
$lineColor = Get-RandomColor
$titleColor = Get-RandomColor
$asciiColor = Get-RandomColor

while ($titleColor -eq $lineColor) {
    $titleColor = Get-RandomColor
}

# Información del sistema
$os = (Get-CimInstance Win32_OperatingSystem).Caption
$osVersion = (Get-CimInstance Win32_OperatingSystem).Version
$cpu = (Get-CimInstance Win32_Processor)[0].Name
$memoryTotal = [math]::Round((Get-CimInstance Win32_ComputerSystem).TotalPhysicalMemory / 1GB, 2)
$uptime = (Get-CimInstance Win32_OperatingSystem).LastBootUpTime
$uptimeFormatted = ((Get-Date) - $uptime).ToString("dd\.hh\:mm\:ss")
$model = (Get-CimInstance Win32_ComputerSystem).Model
$arch = (Get-CimInstance Win32_OperatingSystem).OSArchitecture
$user = $env:USERNAME
$hostname = $env:COMPUTERNAME
$brand = (Get-CimInstance Win32_ComputerSystem).Manufacturer

# NUEVA LÍNEA: Información de GPU
$gpu = (Get-CimInstance Win32_VideoController | Select-Object -First 1).Name

# Logo ASCII de Katifetch
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

# Encabezado con nombre de Katifetch
Write-Host "`n==============================" -ForegroundColor $lineColor
Write-Host "         Katifetch" -ForegroundColor $titleColor
Write-Host "==============================" -ForegroundColor $lineColor

# Datos del sistema
Write-Host "User:      $user" -ForegroundColor Green
Write-Host "Hostname:  $hostname" -ForegroundColor Yellow
Write-Host "Brand:     $brand" -ForegroundColor Cyan
Write-Host "OS:        $os" -ForegroundColor Magenta
Write-Host "Version:   $osVersion" -ForegroundColor Blue
Write-Host "CPU:       $cpu" -ForegroundColor Red
Write-Host "GPU:       $gpu" -ForegroundColor White
Write-Host "Memory:    $memoryTotal GB" -ForegroundColor Green
Write-Host "Uptime:    $uptimeFormatted" -ForegroundColor Yellow
Write-Host "Model:     $model" -ForegroundColor Cyan
Write-Host "Arch:      $arch" -ForegroundColor Magenta
