@echo off
title Jet AI - Windows Firewall Configuration
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo.
    echo ======================================================================
    echo   ADMINISTRATOR PRIVILEGES REQUIRED
    echo ======================================================================
    echo   Please RIGHT-CLICK this file and select "Run as administrator".
    echo   This allows your mobile phone to connect to Jet AI over your Wi-Fi.
    echo ======================================================================
    echo.
    pause
    exit /b
)

echo Adding inbound Windows Firewall rule for Port 3000...
netsh advfirewall firewall add rule name="Jet AI Web Server (Port 3000)" dir=in action=allow protocol=TCP localport=3000

echo.
echo ======================================================================
echo  [SUCCESS] Port 3000 is now unlocked for mobile devices on your Wi-Fi!
echo  You can now open http://10.40.26.105:3000 from any phone on this Wi-Fi.
echo ======================================================================
echo.
pause
