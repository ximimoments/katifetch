# Katifetch for Windows - PowerShell Version

# Colores
$cyan = "Cyan"
$magenta = "Magenta"
$yellow = "Yellow"
$green = "Green"

# Información del sistema
$os = (Get-CimInstance Win32_OperatingSystem).Caption
$version = (Get-CimInstance Win32_OperatingSystem).Version
$cpu = (Get-CimInstance Win32_Processor)[0].Name
$memoryTotal = [math]::Round((Get-CimInstance Win32_ComputerSystem).TotalPhysicalMemory / 1GB, 2)
$uptime = (Get-CimInstance Win32_OperatingSystem).LastBootUpTime
$uptimeFormatted = ((Get-Date) - $uptime).ToString("dd\.hh\:mm\:ss")

# Información adicional
$hostname = $env:COMPUTERNAME
$user = $env:USERNAME
$model = (Get-CimInstance Win32_ComputerSystem).Model
$manufacturer = (Get-CimInstance Win32_ComputerSystem).Manufacturer
$is64bit = if ([Environment]::Is64BitOperatingSystem) { "64-bit" } else { "32-bit" }

# Arte ASCII
$asciiArt = @"
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
"@

# Mostrar el logo
Write-Host "`n$asciiArt" -ForegroundColor Magenta

# Mostrar información del sistema
Write-Host "`nUser:      $user" -ForegroundColor $green
Write-Host "Hostname:  $hostname" -ForegroundColor $cyan
Write-Host "Model:     $model" -ForegroundColor $yellow
Write-Host "Brand:     $manufacturer" -ForegroundColor $magenta
Write-Host "OS:        $os" -ForegroundColor $green
Write-Host "Version:   $version ($is64bit)" -ForegroundColor $cyan
Write-Host "CPU:       $cpu" -ForegroundColor $yellow
Write-Host "Memory:    $memoryTotal GB" -ForegroundColor $cyan
Write-Host "Uptime:    $uptimeFormatted" -ForegroundColor $magenta

Write-Host "`Enjoy Katifetch!" -ForegroundColor $green
