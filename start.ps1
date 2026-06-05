# CHTR Trading App Launcher (PowerShell)
# Run this script to start both frontend and backend

Write-Host "================================" -ForegroundColor Cyan
Write-Host "   CHTR Trading App Launcher" -ForegroundColor Cyan  
Write-Host "================================" -ForegroundColor Cyan
Write-Host ""

# Get script directory
$scriptPath = Split-Path -Parent $MyInvocation.MyCommand.Path

# Start ML API Backend
Write-Host "🚀 Starting ML API Backend..." -ForegroundColor Yellow
$mlPath = Join-Path $scriptPath "ml_predictor"

Start-Process -FilePath "powershell" -ArgumentList @(
    "-NoExit",
    "-Command", 
    "cd '$mlPath'; Write-Host '🤖 CHTR ML API Server' -ForegroundColor Green; .\ml_env\Scripts\activate; python api_server.py"
) -WindowStyle Normal

# Wait for ML API to start
Write-Host "⏳ Waiting for ML API to initialize..." -ForegroundColor Yellow
Start-Sleep -Seconds 5

# Start Frontend
Write-Host "🌐 Starting Next.js Frontend..." -ForegroundColor Yellow
Set-Location $scriptPath

Write-Host ""
Write-Host "📱 Services Starting:" -ForegroundColor Green
Write-Host "  🤖 ML API: http://localhost:5000" -ForegroundColor White
Write-Host "  🌐 Frontend: http://localhost:3000" -ForegroundColor White
Write-Host "  💬 Chatbot: Integrated in all pages" -ForegroundColor White
Write-Host ""
Write-Host "🎯 Click the floating chat icon to start talking about stocks!" -ForegroundColor Magenta
Write-Host ""

# Start frontend (this will keep the current window)
npm run dev
