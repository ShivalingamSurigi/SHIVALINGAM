@echo off
title Jet AI - Public Mobile & API Link Generator
cd /d "%~dp0"

echo ========================================================
echo          JET AI - PUBLIC MOBILE & API LINK GENERATOR
echo ========================================================
echo.
echo Checking if Jet AI server is active on port 3000...
netstat -ano | findstr :3000 | findstr LISTENING >nul
if %errorlevel% neq 0 (
    echo [*] Starting Jet AI server in background...
    start /min "Jet AI Background Server" cmd /c "npm run dev"
    echo [*] Waiting 5 seconds for server to initialize...
    timeout /t 5 /nobreak >nul
) else (
    echo [OK] Jet AI server is running on port 3000.
)

echo.
echo ========================================================
echo  Generating Live Public HTTPS Link...
echo  - Opens on ANY mobile phone (iPhone, Android, iPad)
echo  - Works on 4G, 5G, and any Wi-Fi network worldwide
echo  - Provides public API endpoints for mobile apps
echo ========================================================
echo.
echo Starting secure tunnel...
echo (Copy the generated https://... URL and open it on your phone)
echo.

npx -y localtunnel --port 3000
pause
