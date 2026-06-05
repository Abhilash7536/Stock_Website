# 🚀 CHTR Trading App - Complete Startup Guide

## Prerequisites
- Node.js (v18 or higher)
- Python (v3.8 or higher)
- Git

## 📁 Project Structure
```
chtr/
├── src/                 # Next.js frontend
├── ml_predictor/        # Python ML backend
├── package.json         # Frontend dependencies
└── .env.local          # Environment variables
```

## 🎯 Quick Start (Both Services)

### Option 1: Run Everything in Separate Terminals

#### Terminal 1 - Frontend (Next.js)
```bash
# Navigate to project root
cd "c:\Users\T VIJAYA BALAJI\Desktop\chtr_updated\chtr"

# Install dependencies (first time only)
npm install

# Start the development server
npm run dev
```

#### Terminal 2 - Backend (ML API)
```bash
# Navigate to ML predictor folder
cd "c:\Users\T VIJAYA BALAJI\Desktop\chtr_updated\chtr\ml_predictor"

# Activate virtual environment
.\ml_env\Scripts\activate

# Install Python dependencies (first time only)
pip install -r requirements.txt

# Start the ML API server
python api_server.py
```

### Option 2: Quick Setup Script (Windows PowerShell)
```powershell
# Create a startup script
# Copy and paste this into PowerShell:

# Start ML API in background
Start-Process -FilePath "powershell" -ArgumentList @(
    "-Command", 
    "cd 'c:\Users\T VIJAYA BALAJI\Desktop\chtr_updated\chtr\ml_predictor'; .\ml_env\Scripts\activate; python api_server.py"
)

# Wait a moment then start frontend
Start-Sleep -Seconds 3

# Start Next.js frontend
cd "c:\Users\T VIJAYA BALAJI\Desktop\chtr_updated\chtr"
npm run dev
```

## 📋 Detailed Commands

### 🌐 Frontend (Next.js) - Port 3000

#### First Time Setup
```bash
cd "c:\Users\T VIJAYA BALAJI\Desktop\chtr_updated\chtr"
npm install
```

#### Development Commands
```bash
# Start development server
npm run dev

# Build for production
npm run build

# Start production server
npm start

# Run linting
npm run lint
```

#### Frontend URLs
- **Main App**: http://localhost:3000
- **Trading Dashboard**: http://localhost:3000/dashboard
- **Predictions Page**: http://localhost:3000/predictions
- **Portfolio**: http://localhost:3000/portfolio

### 🤖 Backend (ML API) - Port 5000

#### First Time Setup
```bash
cd "c:\Users\T VIJAYA BALAJI\Desktop\chtr_updated\chtr\ml_predictor"

# Create virtual environment (if not exists)
python -m venv ml_env

# Activate virtual environment
.\ml_env\Scripts\activate

# Install dependencies
pip install -r requirements.txt
```

#### Development Commands
```bash
# Navigate to ML folder
cd "c:\Users\T VIJAYA BALAJI\Desktop\chtr_updated\chtr\ml_predictor"

# Activate environment
.\ml_env\Scripts\activate

# Start ML API server
python api_server.py

# Quick test the API
python quick_test.py

# Debug Yahoo Finance issues
python debug_yfinance.py

# Test with wait for rate limiting
python wait_and_test.py
```

#### Backend URLs
- **Health Check**: http://localhost:5000/health
- **Yahoo Finance Status**: http://localhost:5000/status
- **Prediction API**: http://localhost:5000/predict (POST)

## 🔧 Environment Setup

### Check .env.local Configuration
```bash
# Ensure these variables exist in .env.local:
GOOGLE_GENAI_API_KEY=AIzaSyC5vEIWXYX6VVMnV8JIu2ZlaziRre3YhLw
GEMINI_API_KEY=AIzaSyC5vEIWXYX6VVMnV8JIu2ZlaziRre3YhLw
ML_API_URL=http://localhost:5000
```

## 🧪 Testing Commands

### Test Frontend
```bash
# Test Next.js app is running
curl http://localhost:3000

# Test chatbot API
curl -X POST "http://localhost:3000/api/chat" -H "Content-Type: application/json" -d '{"message": "Hello"}'
```

### Test Backend
```bash
# Test ML API health
curl http://localhost:5000/health

# Test Yahoo Finance status
curl http://localhost:5000/status

# Test stock prediction
curl -X POST "http://localhost:5000/predict" -H "Content-Type: application/json" -d '{"ticker": "AAPL"}'
```

### Quick Test Script
```bash
# Run comprehensive test
cd "c:\Users\T VIJAYA BALAJI\Desktop\chtr_updated\chtr"
node test-chatbot.js
```

## 🚨 Troubleshooting

### Frontend Issues
```bash
# Clear Next.js cache
npm run dev -- --turbo

# Reinstall dependencies
rm -rf node_modules package-lock.json
npm install

# Check for TypeScript errors
npm run build
```

### Backend Issues
```bash
# Check Python environment
.\ml_env\Scripts\activate
python --version

# Check installed packages
pip list

# Test Yahoo Finance connectivity
python debug_yfinance.py

# Reinstall Python dependencies
pip install -r requirements.txt --force-reinstall
```

### Port Issues
```bash
# Check if ports are in use
netstat -ano | findstr :3000
netstat -ano | findstr :5000

# Kill processes on ports (if needed)
taskkill /PID <PID_NUMBER> /F
```

## 📱 Features Available

### ✅ Frontend Features
- 🎯 Trading dashboard with portfolio management
- 📊 Stock predictions page
- 💬 **Floating chatbot on all pages** (Gemini AI powered)
- 🔐 Authentication system
- 📈 Real-time stock data visualization

### ✅ Backend Features  
- 🤖 LSTM stock price prediction
- 📊 Yahoo Finance data integration with fallback
- 🔄 Rate limiting and retry logic
- 📝 Mock data provider for reliability
- 🛡️ Error handling and status monitoring

### ✅ Chatbot Features
- 💬 Floating chat widget on all pages
- 🎨 Beautiful animated UI with gradients
- 🤖 Gemini AI powered responses
- 📚 Specialized for stock trading discussions
- ⚡ Quick response suggestions
- 🔄 Real-time chat with typing indicators

## 🎯 Next Steps After Starting

1. **Open your browser**: http://localhost:3000
2. **Look for the floating chat icon** in the bottom-right corner (purple/blue gradient)
3. **Click the chat icon** to start talking about stocks and trading
4. **Test the predictions page**: http://localhost:3000/predictions
5. **Check the dashboard**: http://localhost:3000/dashboard

## 📞 Support

If you encounter issues:

1. **Check both services are running** (ports 3000 and 5000)
2. **Verify environment variables** in .env.local
3. **Test APIs individually** using the curl commands above
4. **Check console logs** in both terminal windows
5. **Try the troubleshooting commands** for your specific issue

---

🎉 **Happy Trading!** Your AI-powered stock trading simulator with chatbot is ready to go!
