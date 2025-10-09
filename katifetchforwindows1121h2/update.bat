@echo off
setlocal

set REPO_URL=https://github.com/ximimoments/katifetch/archive/refs/heads/main.zip
set TEMPZIP=%TEMP%\katifetch_update.zip
set TARGET=%USERPROFILE%\Katifetch-Windows1121h2

echo Downloading latest Katifetch version...
curl -L "%REPO_URL%" -o "%TEMPZIP%" >nul

echo Extracting...
powershell -Command "Expand-Archive -Force '%TEMPZIP%' '%TEMP%\katifetch'"

echo Copying files...
xcopy /Y /Q "%TEMP%\katifetch\katifetch-main\katifetchforwindows1121h2.ps1" "%TARGET%" >nul

echo Update completed.
pause
