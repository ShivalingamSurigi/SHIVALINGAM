@echo off
title Jet AI - Deploy Independent 24/7 Cloud Website Link
cd /d "%~dp0"

echo =======================================================================
echo          JET AI - INDEPENDENT 24/7 CLOUD DEPLOYMENT (VERCEL)
echo =======================================================================
echo.
echo  This tool deploys Jet AI directly to the Cloud (Vercel).
echo.
echo  Benefits:
echo   - Works 24/7 even when your laptop is completely TURNED OFF.
echo   - Independent URL link (e.g. https://jet-ai-yourname.vercel.app)
echo   - Opens without any issues on all mobile phones (iPhone, Android)
echo   - 100%% Free personal tier with global high-speed CDN.
echo.
echo =======================================================================
echo.
echo Starting Vercel deployment...
echo (If prompted, press Enter to log in via GitHub or Email)
echo.

cmd /c "npx vercel"

echo.
echo =======================================================================
echo  If deployment succeeded, your live independent URL was displayed above!
echo  You can now bookmark that link on your phone and shut down your PC.
echo =======================================================================
echo.
pause
