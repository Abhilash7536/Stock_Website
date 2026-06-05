# CHTR (StockSim India) - Complete Project Guide

## 📈 Project Overview

**CHTR** is a comprehensive virtual stock trading platform designed specifically for the Indian market. It combines modern web technologies with artificial intelligence to provide an educational and practical trading experience for users to learn stock market investing without financial risk.

### What is CHTR?

CHTR (StockSim India) is a full-stack web application that simulates real stock trading using virtual money. It's designed as an educational platform where users can:

- Practice trading with ₹10 Lakh virtual capital
- Learn about Indian stock markets (NSE, BSE)
- Get AI-powered stock price predictions
- Track portfolio performance
- Interact with an intelligent trading chatbot
- Understand market dynamics without financial risk

---

## 🎯 Key Features

### 1. **Virtual Trading Simulator**
- **Starting Capital**: ₹10,00,000 (10 Lakh) virtual money
- **Real Market Data**: Live prices for Nifty 50 and popular Indian stocks
- **Buy/Sell Operations**: Complete trading functionality with realistic market simulation
- **Portfolio Tracking**: Real-time P&L calculations and performance metrics

### 2. **AI-Powered Stock Predictions**
- **Machine Learning Model**: Custom LSTM neural network for price forecasting
- **Technical Analysis**: Incorporates RSI, MACD, and moving averages
- **Real-time Predictions**: Next-day price predictions for Indian stocks
- **Educational Insights**: Explanations of prediction reasoning

### 3. **Intelligent Chatbot Assistant**
- **Trading Companion**: AI-powered chatbot specialized in stock market education
- **24/7 Support**: Instant answers to trading questions and platform guidance
- **Educational Focus**: Explains concepts, strategies, and market analysis
- **Context-Aware**: Remembers conversation history for better assistance

### 4. **Comprehensive Dashboard**
- **Portfolio Overview**: Current holdings, P&L, and performance metrics
- **Market Watch**: Live stock prices with real-time updates
- **Transaction History**: Complete record of all trading activities
- **Performance Analytics**: Detailed insights into trading performance

### 5. **Modern User Interface**
- **Responsive Design**: Works seamlessly on desktop, tablet, and mobile
- **Dark/Light Themes**: Customizable UI preferences
- **Intuitive Navigation**: Easy-to-use sidebar navigation
- **Real-time Updates**: Live data refresh and notifications

---

## 🏗️ Technical Architecture

### Frontend (Next.js 15 + TypeScript)
- **Framework**: Next.js 15 with React 19
- **Language**: TypeScript for type safety
- **Styling**: Tailwind CSS for responsive design
- **UI Components**: Radix UI components with custom styling
- **Animation**: Framer Motion for smooth interactions
- **State Management**: React hooks and context

### Backend Services

#### 1. **ML Prediction Service (Python)**
- **Framework**: Flask REST API
- **Model**: Bidirectional LSTM neural network
- **Data Source**: Yahoo Finance API for real-time stock data
- **Features**: Technical indicators, price predictions, model caching
- **Environment**: Isolated Python virtual environment

#### 2. **Chatbot Service (Google Gemini AI)**
- **AI Model**: Google Gemini 1.5 Flash
- **Specialization**: Stock trading and investment education
- **Context**: Maintains conversation history
- **Safety**: Content filtering and appropriate responses

#### 3. **Stock Data Service**
- **Real-time Data**: Live stock prices and market information
- **Indian Markets**: NSE and BSE stock coverage
- **Data Processing**: Price calculations, percentage changes, formatting

### Database & Storage
- **Future Integration**: Firebase Firestore for user data and portfolios
- **Current State**: Mock data for development and testing
- **Session Management**: Client-side state management

---

## 🚀 How to Run the Project Locally

### Prerequisites
- **Node.js** (v18 or higher)
- **Python** (3.10 or higher)
- **Git** (for version control)
- **Modern Browser** (Chrome, Firefox, Safari, Edge)

### Step 1: Setup Frontend (Next.js)

1. **Navigate to project directory:**
   ```powershell
   cd chtr
   ```

2. **Install dependencies:**
   ```powershell
   npm install
   ```

3. **Configure environment variables:**
   - Copy `.env.template` to `.env.local`
   - Add your Google Gemini AI API key:
   ```env
   GOOGLE_GENAI_API_KEY=your_gemini_api_key_here
   ML_API_URL=http://localhost:5000
   ```

4. **Start the development server:**
   ```powershell
   npm run dev
   ```
   - The application will be available at `http://localhost:3000`

### Step 2: Setup ML Prediction Service (Python)

1. **Navigate to ML directory:**
   ```powershell
   cd ml_predictor
   ```

2. **Activate virtual environment:**
   ```powershell
   .\ml_env\Scripts\Activate.ps1
   ```

3. **Install Python dependencies:**
   ```powershell
   pip install -r requirements.txt
   ```

4. **Start the ML API server:**
   ```powershell
   python api_server.py
   ```
   - The ML API will be available at `http://localhost:5000`

### Step 3: Test the Integration

1. **Open the application:**
   - Visit `http://localhost:3000` in your browser
   - You should be redirected to the dashboard

2. **Test the chatbot:**
   - Look for the floating chat icon in the bottom-right corner
   - Click to open the chatbot and ask trading questions

3. **Test stock predictions:**
   - Navigate to the "AI Predictions" section
   - Try getting predictions for stocks like "RELIANCE.NS" or "TCS.NS"

4. **Explore trading features:**
   - Visit the "Market" tab to see live stock data
   - Use the buy/sell buttons (currently shows alerts)
   - Check the "Portfolio" tab for holdings overview

---

## 💡 How to Use CHTR

### Getting Started

1. **Access the Platform:**
   - Open `http://localhost:3000` in your browser
   - You'll be automatically logged in (authentication is currently disabled for development)

2. **Dashboard Overview:**
   - View your virtual balance (₹10,00,000)
   - See portfolio summary and performance metrics
   - Access quick navigation to different sections

### Trading Workflow

1. **Market Research:**
   - Go to "Market" tab to view available stocks
   - Use the search feature to find specific stocks
   - Check current prices and price changes

2. **Get AI Predictions:**
   - Navigate to "AI Predictions" tab
   - Enter a stock symbol (e.g., "RELIANCE.NS", "TCS.NS")
   - Review the AI-generated price prediction and analysis

3. **Make Trading Decisions:**
   - Use the chatbot to ask questions about stocks or strategies
   - Consider the AI predictions and your own research
   - Place buy or sell orders through the market interface

4. **Track Performance:**
   - Monitor your portfolio in the "Portfolio" tab
   - Review profit/loss calculations
   - Track individual stock performance

### Using the AI Chatbot

1. **Opening the Chat:**
   - Click the floating chat icon (💬) in the bottom-right corner
   - The chatbot will greet you with a welcome message

2. **Asking Questions:**
   - Ask about trading concepts: "What is technical analysis?"
   - Get stock advice: "What are good stocks for beginners?"
   - Platform help: "How do I buy stocks on CHTR?"
   - Market insights: "What's happening in the Indian market?"

3. **Educational Focus:**
   - All responses are educational and simulation-focused
   - The chatbot emphasizes that this is a learning platform
   - Includes disclaimers about real-money trading

### AI Predictions

1. **Getting Predictions:**
   - Enter stock symbols in Indian format (e.g., "RELIANCE.NS")
   - The ML model analyzes 60 days of historical data
   - Provides next-day price predictions with explanations

2. **Understanding Results:**
   - **Predicted Price**: Tomorrow's estimated closing price
   - **Explanation**: Technical analysis reasoning
   - **Confidence Indicators**: Based on market volatility and data quality

---

## 🔧 Project Structure Explained

```
chtr/
├── src/                          # Main application source code
│   ├── app/                      # Next.js App Router pages
│   │   ├── (app)/               # Protected app routes
│   │   │   ├── dashboard/       # Main dashboard page
│   │   │   ├── market/          # Stock market and trading
│   │   │   ├── portfolio/       # Portfolio management
│   │   │   └── predictions/     # AI predictions page
│   │   ├── api/                 # API routes
│   │   └── globals.css          # Global styles
│   ├── components/              # Reusable UI components
│   │   ├── ui/                  # Base UI components
│   │   ├── auth/                # Authentication components
│   │   ├── trading/             # Trading-specific components
│   │   └── common/              # Common components (chatbot, etc.)
│   ├── services/                # Business logic services
│   │   ├── chatbot.ts           # AI chatbot service
│   │   ├── ml-prediction.ts     # ML prediction service
│   │   └── stock-data.ts        # Stock data service
│   ├── hooks/                   # Custom React hooks
│   ├── lib/                     # Utility libraries
│   └── utils/                   # Helper functions
├── ml_predictor/                # Python ML service
│   ├── api_server.py            # Flask API server
│   ├── stock_predictor_api.py   # ML prediction logic
│   ├── requirements.txt         # Python dependencies
│   └── ml_env/                  # Python virtual environment
├── public/                      # Static assets
├── package.json                 # Node.js dependencies
├── next.config.ts               # Next.js configuration
├── tailwind.config.js           # Tailwind CSS configuration
└── tsconfig.json                # TypeScript configuration
```

---

## ⚡ Key Benefits & Use Cases

### For Beginners

1. **Risk-Free Learning:**
   - Practice with virtual money
   - Learn from mistakes without financial consequences
   - Build confidence before real trading

2. **Educational Support:**
   - AI chatbot explains concepts in simple terms
   - Visual portfolio tracking shows performance impact
   - Real market data provides authentic experience

3. **Guided Experience:**
   - Predictions help understand market analysis
   - Dashboard provides clear performance metrics
   - Intuitive interface reduces learning curve

### For Educators

1. **Teaching Tool:**
   - Demonstrate trading concepts with real examples
   - Show impact of different strategies
   - Provide hands-on learning experience

2. **Assessment Capability:**
   - Track student performance over time
   - Compare different investment approaches
   - Analyze decision-making patterns

### For Experienced Traders

1. **Strategy Testing:**
   - Test new strategies without risk
   - Explore different market segments
   - Validate trading ideas before implementation

2. **Market Analysis:**
   - Use AI predictions as additional data points
   - Analyze Indian market trends
   - Practice with current market conditions

---

## 🔮 AI & Machine Learning Features

### Stock Price Prediction Model

1. **LSTM Neural Network:**
   - Bidirectional LSTM layers for better pattern recognition
   - 60-day lookback window for historical context
   - Dropout layers to prevent overfitting

2. **Technical Indicators:**
   - **RSI (Relative Strength Index)**: Momentum oscillator
   - **MACD (Moving Average Convergence Divergence)**: Trend indicator
   - **Moving Averages**: Smoothed price trends

3. **Data Processing:**
   - MinMaxScaler normalization for neural network compatibility
   - Feature engineering from raw price data
   - Real-time data fetching from Yahoo Finance

4. **Prediction Pipeline:**
   ```
   Stock Symbol Input → Data Fetching → Technical Analysis → 
   Model Training/Loading → Prediction → Explanation Generation
   ```

### Chatbot Intelligence

1. **Google Gemini Integration:**
   - Advanced language understanding
   - Context-aware responses
   - Safety filters for appropriate content

2. **Domain Specialization:**
   - Pre-trained on stock market knowledge
   - Indian market focus (NSE, BSE)
   - Educational approach with disclaimers

3. **Conversation Management:**
   - Maintains chat history for context
   - Quick response suggestions
   - Error handling and fallback responses

---

## 🛡️ Security & Best Practices

### Development Security

1. **Environment Variables:**
   - API keys stored in `.env.local` files
   - No hardcoded secrets in source code
   - Template files for easy setup

2. **Input Validation:**
   - Stock symbol validation
   - User input sanitization
   - Error boundary components

3. **API Security:**
   - CORS enabled for local development
   - Request validation in API endpoints
   - Error handling without sensitive data exposure

### Production Considerations

1. **Authentication & Authorization:**
   - Firebase Authentication integration ready
   - Role-based access control structure
   - Session management capabilities

2. **Data Protection:**
   - User portfolio data encryption
   - Secure API communications
   - Privacy-compliant data handling

---

## 📊 Performance & Optimization

### Frontend Performance

1. **Next.js Optimizations:**
   - Server-side rendering for faster initial loads
   - Automatic code splitting
   - Image optimization built-in

2. **Component Optimization:**
   - React hooks for efficient state management
   - Skeleton loading for better UX
   - Lazy loading for large datasets

3. **Caching Strategy:**
   - Static asset caching
   - API response caching where appropriate
   - Browser caching for images and styles

### Backend Performance

1. **ML Model Optimization:**
   - Model caching to avoid retraining
   - Efficient data preprocessing
   - Optimized prediction pipeline

2. **API Performance:**
   - Async processing for non-blocking operations
   - Error handling with appropriate HTTP status codes
   - Response compression for faster transfers

---

## 🔧 Development & Customization

### Adding New Features

1. **New Trading Features:**
   - Modify components in `src/components/trading/`
   - Update API routes in `src/app/api/`
   - Add new service functions in `src/services/`

2. **UI Customization:**
   - Edit Tailwind configuration in `tailwind.config.js`
   - Modify component styles in respective component files
   - Update global styles in `src/app/globals.css`

3. **ML Model Enhancement:**
   - Modify `ml_predictor/stock_predictor_api.py` for model changes
   - Update technical indicators calculations
   - Add new prediction features

### Configuration Options

1. **Environment Variables:**
   ```env
   GOOGLE_GENAI_API_KEY=your_gemini_api_key
   ML_API_URL=http://localhost:5000
   NEXT_PUBLIC_APP_NAME=CHTR StockSim India
   ```

2. **Stock Data Configuration:**
   - Update `DEFAULT_SYMBOLS` in market page for different stocks
   - Modify currency formatting for different regions
   - Adjust market data refresh intervals

3. **ML Model Parameters:**
   - `look_back=60` (days of historical data)
   - LSTM layer sizes and dropout rates
   - Training epochs and batch size

---

## 🐛 Troubleshooting Common Issues

### Frontend Issues

1. **"Module not found" errors:**
   ```powershell
   rm -rf node_modules package-lock.json
   npm install
   ```

2. **Environment variables not loading:**
   - Ensure `.env.local` exists in the root directory
   - Restart the development server after changes
   - Check variable names match exactly

3. **Styling issues:**
   - Clear browser cache
   - Ensure Tailwind CSS is properly configured
   - Check for conflicting CSS classes

### Backend/ML Issues

1. **"ML prediction service is not available":**
   - Ensure Python virtual environment is activated
   - Check if Flask server is running on port 5000
   - Verify all Python dependencies are installed

2. **Stock data fetching errors:**
   - Check internet connection
   - Verify stock symbol format (e.g., "RELIANCE.NS")
   - Try different stock symbols

3. **Model training failures:**
   - Ensure sufficient historical data (at least 60 days)
   - Check Yahoo Finance API availability
   - Verify Python dependencies are correctly installed

### Chatbot Issues

1. **Chatbot not responding:**
   - Check Google Gemini API key in `.env.local`
   - Verify API key has proper permissions
   - Check browser console for error messages

2. **Slow responses:**
   - Check internet connection
   - Verify API rate limits not exceeded
   - Consider reducing conversation context length

---

## 🚀 Future Enhancements

### Planned Features

1. **User Authentication:**
   - Firebase Authentication integration
   - User profiles and preferences
   - Social login options

2. **Advanced Trading Features:**
   - Options and futures trading simulation
   - Advanced order types (stop-loss, limit orders)
   - Paper trading competitions

3. **Enhanced Analytics:**
   - Detailed performance reports
   - Risk analysis tools
   - Comparison with market indices

4. **Mobile Application:**
   - React Native mobile app
   - Push notifications for market updates
   - Offline capability for viewing portfolios

5. **Community Features:**
   - User leaderboards
   - Trading strategies sharing
   - Discussion forums

### Technical Improvements

1. **Real-time Updates:**
   - WebSocket integration for live data
   - Push notifications for portfolio changes
   - Real-time chat capabilities

2. **Advanced ML Models:**
   - Multiple prediction models
   - Sentiment analysis from news
   - Market volatility predictions

3. **Performance Optimizations:**
   - Redis caching for API responses
   - CDN integration for global access
   - Database query optimizations

---

## 📞 Support & Community

### Getting Help

1. **Documentation:**
   - Check `README.md` for basic setup
   - Review `ML_INTEGRATION_GUIDE.md` for ML-specific issues
   - Read `STARTUP_GUIDE.md` for quick start instructions

2. **Troubleshooting:**
   - Review error messages in browser console
   - Check server logs for backend issues
   - Use the test scripts provided for verification

3. **Community:**
   - GitHub issues for bug reports
   - Feature requests and suggestions
   - Code contributions welcome

### Contributing

1. **Code Contributions:**
   - Fork the repository
   - Create feature branches
   - Submit pull requests with clear descriptions

2. **Bug Reports:**
   - Use GitHub issues
   - Provide detailed reproduction steps
   - Include environment information

3. **Feature Requests:**
   - Describe the use case clearly
   - Explain the expected behavior
   - Consider implementation complexity

---

## 📄 License & Credits

### Technology Stack Credits

- **Next.js & React**: Frontend framework
- **TypeScript**: Type safety and developer experience
- **Tailwind CSS**: Utility-first CSS framework
- **Radix UI**: Accessible component primitives
- **Google Gemini AI**: Chatbot intelligence
- **Yahoo Finance**: Stock market data
- **TensorFlow/Keras**: Machine learning framework
- **Flask**: Python web framework

### Educational Purpose

This project is designed for educational purposes only. All trading is simulated with virtual money. Users should conduct their own research and consult financial advisors before making real investment decisions.

---

## 🎯 Conclusion

CHTR (StockSim India) represents a comprehensive solution for stock market education and practice trading. By combining modern web technologies with artificial intelligence, it provides an engaging and educational platform for learning about Indian stock markets.

The project demonstrates:
- **Full-stack development** with modern frameworks
- **AI integration** for intelligent features
- **Machine learning** for predictive analytics
- **Responsive design** for multiple devices
- **Educational focus** with practical application

Whether you're a beginner learning about investing, an educator teaching financial concepts, or an experienced trader testing strategies, CHTR provides the tools and features needed for effective stock market education.

**Start your trading journey today with CHTR - where learning meets innovation!** 📈🚀
