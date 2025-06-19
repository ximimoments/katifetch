<#
  Katifetch for Windows 10 Only – PowerShell Edition
#>

# Lista de colores posibles
$colors = @("Cyan", "Magenta", "Yellow", "Green", "Blue", "White", "Red")

function Get-RandomColor {
    Get-Random -InputObject $colors
}

# Colores aleatorios sin repetición
$lineColor  = Get-RandomColor
$titleColor = Get-RandomColor
while ($titleColor -eq $lineColor) { $titleColor = Get-RandomColor }
$asciiColor = Get-RandomColor

# Obtener versión del sistema
$osObj     = Get-CimInstance Win32_OperatingSystem
$osVersion = $osObj.Version
$osCaption = $osObj.Caption

# Asegurar que es Windows 10 (versión empieza con 10.)
if (-not ($osVersion.StartsWith("10."))) {
    Write-Host "`n❌ This version of Katifetch is for Windows 10 only." -ForegroundColor Red
    Write-Host "You're using: $osCaption ($osVersion)" -ForegroundColor Yellow
    exit
}

# Información del sistema
$cpu       = (Get-CimInstance Win32_Processor)[0].Name.Trim()
$memoryGB  = [math]::Round((Get-CimInstance Win32_ComputerSystem).TotalPhysicalMemory / 1GB, 2)
$uptimeRaw = [Management.ManagementDateTimeConverter]::ToDateTime($osObj.LastBootUpTime)
$uptime    = (Get-Date) - $uptimeRaw
$uptimeFmt = "{0:%d}d {0:hh}h {0:mm}m {0:ss}s" -f $uptime

$model     = (Get-CimInstance Win32_ComputerSystem).Model
$arch      = $osObj.OSArchitecture
$user      = $env:USERNAME
$hostname  = $env:COMPUTERNAME
$brand     = (Get-CimInstance Win32_ComputerSystem).Manufacturer

# Logo ASCII
Write-Host ""
@"                                                                                                                                                     
                                         #****    
                        (*********************    
      (***************  **********************    
     *****************  **********************    
     *****************  **********************    
     *****************  **********************    
     *****************  **********************    
     *****************  **********************    
                                                  
     *****************  **********************    
     *****************  **********************    
     *****************  **********************    
     *****************  **********************    
     *****************  **********************    
     */***************  **********************    
                        /*********************    
                                          (***    
                                                               
"@ | Write-Host -ForegroundColor $asciiColor

# Encabezado
Write-Host "`n==============================" -ForegroundColor $lineColor
Write-Host "         Katifetch" -ForegroundColor $titleColor
Write-Host "     for Windows 10 Only" -ForegroundColor $titleColor
Write-Host "==============================" -ForegroundColor $lineColor

# Información del sistema
Write-Host "User:      $user"        -ForegroundColor Green
Write-Host "Hostname:  $hostname"    -ForegroundColor Yellow
Write-Host "Brand:     $brand"       -ForegroundColor Cyan
Write-Host "Model:     $model"       -ForegroundColor Cyan
Write-Host "OS:        $osCaption"   -ForegroundColor Magenta
Write-Host "Version:   $osVersion"   -ForegroundColor Blue
Write-Host "Arch:      $arch"        -ForegroundColor Magenta

