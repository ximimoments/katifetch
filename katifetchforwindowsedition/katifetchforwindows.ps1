# Katifetch for Windows - Simple PowerShell version

# Colors
$cyan = "Cyan"
$magenta = "Magenta"
$yellow = "Yellow"
$green = "Green"

# System Information
$os = (Get-CimInstance Win32_OperatingSystem).Caption
$cpu = (Get-CimInstance Win32_Processor)[0].Name
$memoryTotal = [math]::Round((Get-CimInstance Win32_ComputerSystem).TotalPhysicalMemory / 1GB, 2)
$uptime = (Get-CimInstance Win32_OperatingSystem).LastBootUpTime
$uptimeFormatted = ((Get-Date) - $uptime).ToString("dd\.hh\:mm\:ss")

# Output
Write-Host ""
Write-Host "==============================" -ForegroundColor $magenta
Write-Host "         Katifetch" -ForegroundColor $cyan
Write-Host "==============================" -ForegroundColor $magenta

Write-Host "`nOS:        $os" -ForegroundColor $green
Write-Host "CPU:       $cpu" -ForegroundColor $yellow
Write-Host "Memory:    $memoryTotal GB" -ForegroundColor $cyan
Write-Host "Uptime:    $uptimeFormatted" -ForegroundColor $magenta

Write-Host "`n🚀 Enjoy Katifetch!" -ForegroundColor $green
