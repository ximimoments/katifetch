# Katifetch for Windows - Simple PowerShell version

# Colors
$cyan = "Cyan"
$magenta = "Magenta"
$yellow = "Yellow"
$green = "Green"

# Logo ASCII
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

Write-Host "`n$asciiArt" -ForegroundColor $magenta

# System Information
$os = (Get-CimInstance Win32_OperatingSystem).Caption
$cpu = (Get-CimInstance Win32_Processor)[0].Name
$memoryTotal = [math]::Round((Get-CimInstance Win32_ComputerSystem).TotalPhysicalMemory / 1GB, 2)
$uptime = (Get-CimInstance Win32_OperatingSystem).LastBootUpTime
$uptimeFormatted = ((Get-Date) - $uptime).ToString("dd\.hh\:mm\:ss")

# Output
Write-Host "`n==============================" -ForegroundColor $magenta
Write-Host "         Katifetch" -ForegroundColor $cyan
Write-Host "==============================" -ForegroundColor $magenta

Write-Host "`nOS:        $os" -ForegroundColor $green
Write-Host "CPU:       $cpu" -ForegroundColor $yellow
Write-Host "Memory:    $memoryTotal GB" -ForegroundColor $cyan
Write-Host "Uptime:    $uptimeFormatted" -ForegroundColor $magenta

Write-Host "`n🚀 Enjoy Katifetch!" -ForegroundColor $green
