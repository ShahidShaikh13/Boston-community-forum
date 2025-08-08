# Boston Campus Forum

A full-stack Ruby on Rails web application that serves as a community forum for students from Boston-area colleges. Students can post, comment, and discuss campus topics in a modern, user-friendly interface.

## 🎓 Features

### User Authentication & Profiles
- **Devise-based authentication** with email and password
- **College selection** during registration with major Boston schools
- **User profiles** showing posts, comments, and college affiliation
- **College badges** displayed next to usernames

### Forum Functionality
- **Create, edit, and delete posts** in various categories
- **Comment system** on posts with real-time updates
- **Category-based organization** (Housing, Events, Roommates, etc.)
- **College filtering** to see posts from specific schools
- **Search and filtering** capabilities

### Modern UI/UX
- **Responsive design** that works on desktop and mobile
- **Dark theme support** with theme toggle
- **Modern SCSS styling** with CSS custom properties
- **Font Awesome icons** for enhanced visual experience
- **Google Fonts** (Inter) for clean typography

### Technical Features
- **PostgreSQL database** for robust data storage
- **Pagination** for better performance
- **RESTful API design** with proper routing
- **Form validation** and error handling
- **Flash messages** for user feedback

## 🛠 Tech Stack

- **Backend**: Ruby on Rails 8.0.2
- **Database**: PostgreSQL
- **Authentication**: Devise
- **Styling**: SCSS with Dart Sass
- **Icons**: Font Awesome 6.4.0
- **Fonts**: Google Fonts (Inter)
- **Pagination**: Kaminari
- **Deployment**: Heroku-ready

## 📋 Prerequisites

Before running this application, make sure you have:

- Ruby 3.2.2 or higher
- Rails 8.0.2
- PostgreSQL
- Node.js (for asset compilation)

## 🚀 Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd boston-campus-forum
   ```

2. **Install dependencies**
   ```bash
   bundle install
   ```

3. **Set up the database**
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
   Open your browser and go to `http://localhost:3000`

## 👥 Sample Users

The application comes pre-populated with sample data. You can log in with any of these accounts using `password123`:

- `john.smith@northeastern.edu` (Northeastern University)
- `sarah.jones@bu.edu` (Boston University)
- `mike.chen@mit.edu` (MIT)
- `emily.davis@harvard.edu` (Harvard University)
- `alex.rodriguez@umb.edu` (UMass Boston)
- `jessica.wilson@bc.edu` (Boston College)
- `david.kim@emerson.edu` (Emerson College)
- `lisa.thompson@suffolk.edu` (Suffolk University)
- `ryan.patel@simmons.edu` (Simmons University)
- `amanda.lee@wit.edu` (Wentworth Institute)

## 📁 Project Structure

```
boston-campus-forum/
├── app/
│   ├── controllers/
│   │   ├── posts_controller.rb
│   │   ├── categories_controller.rb
│   │   ├── comments_controller.rb
│   │   ├── home_controller.rb
│   │   ├── users_controller.rb
│   │   └── users/registrations_controller.rb
│   ├── models/
│   │   ├── user.rb
│   │   ├── post.rb
│   │   ├── category.rb
│   │   └── comment.rb
│   ├── views/
│   │   ├── posts/
│   │   ├── categories/
│   │   ├── home/
│   │   ├── users/
│   │   └── devise/
│   └── assets/stylesheets/application.scss
├── config/
│   ├── routes.rb
│   └── database.yml
├── db/
│   ├── seeds.rb
│   └── migrate/
└── README.md
```

## 🎨 Design Features

### Color Scheme
- **Primary**: Blue (#2563eb)
- **Secondary**: Gray (#64748b)
- **Success**: Green (#10b981)
- **Warning**: Yellow (#f59e0b)
- **Danger**: Red (#ef4444)

### Dark Theme
The application includes a dark theme that can be toggled using the moon icon in the navigation bar. The theme preference is saved in cookies.

### Responsive Design
- Mobile-first approach
- Grid-based layouts
- Flexible navigation
- Touch-friendly buttons

## 🔧 Configuration

### Environment Variables
Create a `.env` file in the root directory:

```env
DATABASE_URL=postgresql://localhost/boston_campus_forum_development
SECRET_KEY_BASE=your_secret_key_here
```

### Database Configuration
The application uses PostgreSQL. Make sure your `config/database.yml` is properly configured for your environment.

## 🚀 Deployment

### Heroku Deployment
1. Create a new Heroku app
2. Add PostgreSQL addon
3. Push to Heroku
4. Run migrations: `heroku run rails db:migrate`
5. Seed the database: `heroku run rails db:seed`

### Environment Variables for Production
Set these in your Heroku dashboard:
- `SECRET_KEY_BASE`
- `DATABASE_URL`

## 🧪 Testing

Run the test suite:
```bash
rails test
```

## 📝 API Endpoints

### Posts
- `GET /posts` - List all posts
- `GET /posts/:id` - Show specific post
- `POST /posts` - Create new post
- `PUT /posts/:id` - Update post
- `DELETE /posts/:id` - Delete post

### Categories
- `GET /categories` - List all categories
- `GET /categories/:id` - Show category with posts

### Comments
- `POST /posts/:post_id/comments` - Create comment
- `DELETE /posts/:post_id/comments/:id` - Delete comment

### Users
- `GET /profile` - User profile page

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests if applicable
5. Submit a pull request

## 📄 License

This project is licensed under the MIT License.

## 🙏 Acknowledgments

- Built with Ruby on Rails
- Styled with SCSS and modern CSS
- Icons by Font Awesome
- Fonts by Google Fonts

## 📞 Support

For support or questions, please open an issue in the repository.

---

**Boston Campus Forum** - Connecting students across Boston-area colleges since 2024.
