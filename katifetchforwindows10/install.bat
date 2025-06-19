@echo off
setlocal

set "TARGET=%USERPROFILE%\Katifetch-Windows10"
mkdir "%TARGET%" >nul 2>&1
copy /Y katifetch-windows10.ps1 "%TARGET%"
copy /Y katifetch.bat "%TARGET%"

REM Add folder to user PATH if not already present
powershell -Command ^
  "$p=[Environment]::GetEnvironmentVariable('Path','User');" ^
  "if (-not $p.Contains('%TARGET%')) {" ^
  "[Environment]::SetEnvironmentVariable('Path', $p + ';%TARGET%', 'User');" ^
  "Write-Host 'Added Katifetch folder to user PATH. Please restart the console.';" ^
  "} else { Write-Host 'Katifetch folder already in PATH.' }"

echo.
echo Installation complete. You can now run "katifetch" from any console.
pause
