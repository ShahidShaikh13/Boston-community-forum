# 🎓 Boston Campus Forum

A modern, full-featured community forum for Boston-area college students. Built with Ruby on Rails, PostgreSQL, and modern web technologies.

## 🌟 Features

- **Real User Registration** - Sign up with your personal email
- **College Selection** - 12+ Boston colleges to choose from
- **Post Creation & Comments** - Full forum functionality
- **Voting System** - Upvote/downvote posts and comments
- **Moderation Tools** - Pin posts, moderator roles
- **Modern UI** - SailPoint-inspired design with dark/light themes
- **Responsive Design** - Works on all devices
- **Real-time Persistence** - All data saved to PostgreSQL database

## 🚀 Live Demo

**Your deployed website will be available at:**
- Railway: `https://your-app-name.up.railway.app`
- Render: `https://your-app-name.onrender.com`
- Heroku: `https://your-app-name.herokuapp.com`

## 🛠️ Tech Stack

- **Backend**: Ruby on Rails 8.0.2
- **Database**: PostgreSQL
- **Authentication**: Devise
- **Styling**: SCSS with modern CSS
- **Icons**: Font Awesome
- **Deployment**: Railway/Render/Heroku ready

## 📱 Quick Start

### Local Development

1. **Clone the repository**
   ```bash
   git clone <your-repo-url>
   cd boston-campus-forum
   ```

2. **Install dependencies**
   ```bash
   bundle install
   ```

3. **Setup database**
   ```bash
   rails db:create
   rails db:migrate
   rails db:seed
   ```

4. **Start the server**
   ```bash
   rails server
   ```

5. **Visit the application**
   - Open http://localhost:3000
   - Sign up with your email
   - Start posting!

## 🚀 Deploy to Production

### Option 1: Railway (Recommended)

1. **Push to GitHub**
   ```bash
   git add .
   git commit -m "Ready for deployment"
   git push origin main
   ```

2. **Deploy to Railway**
   - Go to [railway.app](https://railway.app)
   - Sign up with GitHub
   - Create new project → Deploy from GitHub
   - Select your repository
   - Add PostgreSQL database
   - Deploy!

3. **Set Environment Variables**
   ```
   RAILS_ENV=production
   RAILS_MASTER_KEY=your_master_key
   DATABASE_URL=your_railway_postgres_url
   ```

4. **Run Migrations**
   ```bash
   rails db:migrate
   rails db:seed
   ```

### Option 2: Render

1. **Create Render Account**
   - Go to [render.com](https://render.com)
   - Sign up with GitHub

2. **Create Web Service**
   - Name: `boston-campus-forum`
   - Environment: Ruby
   - Build Command: `bundle install && rails assets:precompile`
   - Start Command: `bundle exec rails server -p $PORT -e production`

3. **Add PostgreSQL Database**
   - Create new PostgreSQL service
   - Link to your web service
   - Set `DATABASE_URL` environment variable

## 🎯 Sample Accounts

For testing, you can use these sample accounts:

- **Admin (Moderator)**: `john.smith@northeastern.edu` / `password123`
- **Regular User**: `sarah.jones@bu.edu` / `password123`

## 🏫 Supported Colleges

- Northeastern University
- Boston University
- Massachusetts Institute of Technology (MIT)
- Harvard University
- University of Massachusetts Boston
- Boston College
- Emerson College
- Suffolk University
- Simmons University
- Wentworth Institute of Technology
- Massachusetts College of Art and Design
- Berklee College of Music
- New England Conservatory
- Tufts University
- Brandeis University

## 🎨 Features

### User Experience
- ✅ **Real email registration** - Use any email address
- ✅ **College selection** - Choose from 12+ Boston colleges
- ✅ **Password validation** - Secure password requirements
- ✅ **Terms & Privacy** - Real legal pages
- ✅ **Session management** - Stay logged in
- ✅ **Modern UI** - Professional, responsive design

### Forum Functionality
- ✅ **Create posts** - Share campus experiences
- ✅ **Add comments** - Join discussions
- ✅ **Vote system** - Upvote/downvote posts
- ✅ **Edit/delete** - Manage your content
- ✅ **Moderation** - Pin posts, moderator roles
- ✅ **Categories** - Organize by topic
- ✅ **College filtering** - Filter by school

### Technical Features
- ✅ **PostgreSQL database** - Production-ready
- ✅ **Real data persistence** - Everything saved
- ✅ **Security** - CSRF protection, password hashing
- ✅ **Responsive design** - Mobile-friendly
- ✅ **Dark/light themes** - User preference
- ✅ **Performance** - Optimized for production

## 🔧 Configuration

### Environment Variables

For production deployment, set these environment variables:

```
RAILS_ENV=production
RAILS_MASTER_KEY=your_master_key
DATABASE_URL=your_postgres_url
RAILS_MAX_THREADS=5
RAILS_SERVE_STATIC_FILES=true
```

### Database Setup

The application uses PostgreSQL with these models:
- **Users** - Authentication and profiles
- **Posts** - Forum posts with voting
- **Comments** - Post comments
- **Categories** - Post organization

## 🎉 Your Real Website

Once deployed, your Boston Campus Forum will be:
- 🌐 **Live on the internet**
- 👥 **Accessible to real users**
- 💾 **Persistent database**
- 🔐 **Secure registration**
- 📱 **Mobile-friendly**
- 🎨 **Modern design**

## 📞 Support

If you encounter any issues:
1. Check the deployment logs
2. Verify environment variables
3. Ensure database migrations ran
4. Test locally first

## 🚀 Next Steps

1. **Deploy to your chosen platform**
2. **Test all functionality**
3. **Share with friends and family**
4. **Monitor usage and performance**
5. **Consider adding custom domain**

---

**Your Boston Campus Forum is ready to become a real, live website!** 🎉
