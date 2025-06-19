@echo off
setlocal

set "TARGET=%USERPROFILE%\Katifetch-Windows10"

if exist "%TARGET%" (
    rmdir /S /Q "%TARGET%"
    echo Katifetch has been removed from your user folder.
) else (
    echo Katifetch is not installed.
)
pause
