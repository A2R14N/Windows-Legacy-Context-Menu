
@echo off
title Restore Default Context Menu in Windows 11

:: Remove the original registry key
reg.exe delete "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}" /f

:: Remove the additional registry key
reg.exe delete "HKCU\Software\Classes\CLSID\{51668040-5e31-4023-bbe3-149163bd80f1}" /f

:: Restart Windows Explorer
echo Restarting Windows Explorer...
timeout /t 2 /nobreak >nul

taskkill /f /im explorer.exe >nul 2>&1
start explorer.exe

echo.
echo Default Windows 11 Context Menu has been restored.
pause
