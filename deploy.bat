@echo off
title KEREN - Deploy to Vercel
set NODE="C:\Program Files\nodejs\node.exe"
set VERCEL="C:\Users\Lenovo\AppData\Roaming\npm\node_modules\vercel\dist\index.js"

echo.
echo ===================================
echo   KEREN Electric Bike - Deploy
echo ===================================
echo.

:: CD into project folder (fixes spaces-in-path issue)
cd /d "%~dp0"
echo [OK] Folder: %CD%
echo.

:: Verify vercel works
%NODE% %VERCEL% --version
if errorlevel 1 (
    echo [ERROR] Vercel not working. Contact support.
    pause & exit /b 1
)

echo.
echo [DEPLOYING to Vercel...]
echo.
%NODE% %VERCEL% --prod

echo.
echo ===================================
echo   https://keren-electric-bike.vercel.app
echo ===================================
pause
