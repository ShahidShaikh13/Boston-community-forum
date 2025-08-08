# Boston Community Forum

Boston Community Forum is a full-featured web application built with Ruby on Rails and PostgreSQL. It is designed for students at colleges across the Boston area to post, comment, and engage in discussions related to academics, housing, events, and campus life.
<img width="1511" height="860" alt="Screenshot 2025-08-08 at 3 58 54 PM" src="https://github.com/user-attachments/assets/4cfb3a3c-28f6-48a7-bcd5-d921d69aa0ca" />
<img width="1512" height="691" alt="Screenshot 2025-08-08 at 3 59 20 PM" src="https://github.com/user-attachments/assets/506ca3b8-3727-47ba-905e-031151e877f1" />
<img width="1512" height="846" alt="Screenshot 2025-08-08 at 3 59 39 PM" src="https://github.com/user-attachments/assets/ef40ae63-2d6a-479f-aa00-b97e935f9125" />

---

## Live Demo


---

## Project Overview

Boston students from universities like Northeastern, BU, MIT, and Harvard often lack a centralized platform for cross-campus communication. This forum serves as a digital space to connect students across all campuses.

---

## Tech Stack

- Backend: Ruby on Rails
- Database: PostgreSQL
- Frontend: ERB, SCSS, Stimulus.js
- Authentication: Devise
- Deployment: Railway (supports Heroku/Render)
- Version Control: Git and GitHub

---

## Features

- Secure user registration and login
- College selection during sign-up
- Create and manage posts
- Add threaded comments to posts
- Upvote and downvote system for posts and comments
- Role-based moderation tools
- Mobile-responsive user interface
- Data persistence with PostgreSQL

---

## Getting Started

To set up the project locally:

```bash
git clone https://github.com/ShahidShaikh13/Boston-community-forum.git
cd Boston-community-forum
bundle install
rails db:create db:migrate db:seed
rails server
