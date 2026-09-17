@echo off
title Jet AI Launcher
cd /d "%~dp0"

echo ===================================================
echo               Launching Jet AI...
echo ===================================================

:: Check if server is already active on port 3000
netstat -ano | findstr :3000 | findstr LISTENING >nul
if %errorlevel% equ 0 (
    echo [OK] Jet AI server is already running.
) else (
    echo [*] Starting Jet AI server in the background...
    start /min "Jet AI Background Server" cmd /c "npm run dev"
    echo [*] Waiting for server to initialize...
    timeout /t 4 /nobreak >nul
)

echo [*] Opening Jet AI in your default web browser...
start http://localhost:3000
exit
