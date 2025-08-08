#!/bin/bash

echo "🚀 Boston Campus Forum Deployment Script"
echo "========================================"

# Check if we're in the right directory
if [ ! -f "Gemfile" ]; then
    echo "❌ Error: Please run this script from the boston-campus-forum directory"
    exit 1
fi

echo "📦 Preparing for deployment..."

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "🔧 Initializing git repository..."
    git init
    git add .
    git commit -m "Initial commit - Boston Campus Forum"
fi

# Check if we have uncommitted changes
if [ -n "$(git status --porcelain)" ]; then
    echo "📝 Committing changes..."
    git add .
    git commit -m "Ready for deployment - $(date)"
fi

echo "✅ Code is ready for deployment!"
echo ""
echo "🎯 Next Steps:"
echo "1. Push to GitHub: git push origin main"
echo "2. Deploy to Railway: https://railway.app"
echo "3. Or deploy to Render: https://render.com"
echo ""
echo "📋 Required Environment Variables:"
echo "- RAILS_ENV=production"
echo "- RAILS_MASTER_KEY=your_master_key"
echo "- DATABASE_URL=your_postgres_url"
echo ""
echo "🔧 After deployment, run:"
echo "- rails db:migrate"
echo "- rails db:seed"
echo ""
echo "🌐 Your live website will be available at your deployment URL!" 