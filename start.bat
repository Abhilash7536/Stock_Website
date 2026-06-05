@echo off
echo ================================
echo    CHTR Trading App Launcher
echo ================================
echo.
echo Starting ML API Backend...
echo.

REM Start ML API in a new window
start "CHTR ML API" cmd /c "cd /d \"%~dp0ml_predictor\" && .\ml_env\Scripts\activate && python api_server.py && pause"

echo Waiting for ML API to start...
timeout /t 5 /nobreak > nul

echo.
echo Starting Next.js Frontend...
echo.

REM Start frontend in current window
cd /d "%~dp0"
npm run dev

pause
