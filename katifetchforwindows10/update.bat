@echo off
setlocal

set REPO_URL=https://github.com/ximimoments/katifetch/archive/refs/heads/main.zip
set TEMPZIP=%TEMP%\katifetch_update.zip
set TARGET=%USERPROFILE%\Katifetch-Windows10

echo Downloading latest Katifetch version...
curl -L "%REPO_URL%" -o "%TEMPZIP%" >nul

echo Extracting...
powershell -Command "Expand-Archive -Force '%TEMPZIP%' '%TEMP%\katifetch'"

echo Copying files...
xcopy /Y /Q "%TEMP%\katifetch\katifetch-main\katifetch-windows10.ps1" "%TARGET%" >nul

echo Update completed.
pause
