# Clear existing data
puts "Clearing existing data..."
User.destroy_all
Category.destroy_all
Post.destroy_all
Comment.destroy_all

# Create Categories
puts "Creating categories..."
categories = [
  {
    name: "Housing",
    description: "Find roommates, apartments, sublets, and housing-related discussions."
  },
  {
    name: "Events",
    description: "Campus events, parties, meetups, and social activities."
  },
  {
    name: "Roommates",
    description: "Looking for roommates or discussing roommate situations."
  },
  {
    name: "For Sale",
    description: "Buy and sell items within the campus community."
  },
  {
    name: "Rideshare",
    description: "Carpooling, rides to airports, and transportation coordination."
  },
  {
    name: "Academic",
    description: "Course discussions, study groups, and academic resources."
  },
  {
    name: "Food & Dining",
    description: "Restaurant recommendations, meal plans, and dining experiences."
  },
  {
    name: "Sports & Recreation",
    description: "Intramural sports, gym buddies, and recreational activities."
  },
  {
    name: "Technology",
    description: "Tech support, software recommendations, and digital tools."
  },
  {
    name: "General Discussion",
    description: "General campus life discussions and miscellaneous topics."
  }
]

categories.each do |category_data|
  Category.create!(category_data)
end

puts "Created #{Category.count} categories"

# Create Sample Users
puts "Creating sample users..."
users_data = [
  { email: "john.smith@northeastern.edu", college: "Northeastern University" },
  { email: "sarah.jones@bu.edu", college: "Boston University" },
  { email: "mike.chen@mit.edu", college: "Massachusetts Institute of Technology (MIT)" },
  { email: "emily.davis@harvard.edu", college: "Harvard University" },
  { email: "alex.rodriguez@umb.edu", college: "University of Massachusetts Boston" },
  { email: "jessica.wilson@bc.edu", college: "Boston College" },
  { email: "david.kim@emerson.edu", college: "Emerson College" },
  { email: "lisa.thompson@suffolk.edu", college: "Suffolk University" },
  { email: "ryan.patel@simmons.edu", college: "Simmons University" },
  { email: "amanda.lee@wit.edu", college: "Wentworth Institute of Technology" }
]

users = []
users_data.each do |user_data|
  user = User.create!(
    email: user_data[:email],
    college: user_data[:college],
    password: "password123",
    password_confirmation: "password123"
  )
  users << user
end

puts "Created #{User.count} users"

# Create Sample Posts
puts "Creating sample posts..."
posts_data = [
  {
    title: "Looking for roommate in Allston - $800/month",
    content: "Hi everyone! I'm a Northeastern student looking for a roommate in Allston. The apartment is a 2-bedroom, 1-bathroom unit near the T. Rent is $1600 total, so $800 each. Utilities included. Looking for someone clean and respectful. Available starting September 1st. DM me if interested!",
    category_name: "Housing",
    user_email: "john.smith@northeastern.edu"
  },
  {
    title: "Free textbooks - Computer Science majors",
    content: "I'm graduating and have several CS textbooks that I'd like to give away for free. Includes: Introduction to Algorithms, Database Systems, and Computer Networks. All in good condition. Pickup in Cambridge. First come, first served!",
    category_name: "For Sale",
    user_email: "mike.chen@mit.edu"
  },
  {
    title: "Weekend trip to NYC - Looking for ride share",
    content: "Planning a weekend trip to NYC on October 15-17. Looking for 2-3 people to split gas and tolls. I can drive or we can take turns. Flexible on departure time. DM me if interested!",
    category_name: "Rideshare",
    user_email: "sarah.jones@bu.edu"
  },
  {
    title: "Study group for CS 3500 - Northeastern",
    content: "Looking to form a study group for CS 3500 (Software Engineering) at Northeastern. We can meet on campus or virtually. Anyone interested?",
    category_name: "Academic",
    user_email: "john.smith@northeastern.edu"
  },
  {
    title: "Best pizza places near campus?",
    content: "New to Boston and looking for good pizza recommendations near the BU campus. Any favorites? Preferably places that deliver!",
    category_name: "Food & Dining",
    user_email: "sarah.jones@bu.edu"
  },
  {
    title: "Intramural basketball team looking for players",
    content: "Our intramural basketball team needs 2 more players for the fall season. Games are on Sundays. All skill levels welcome. DM me if interested!",
    category_name: "Sports & Recreation",
    user_email: "alex.rodriguez@umb.edu"
  },
  {
    title: "Roommate needed - Fenway area",
    content: "Looking for a roommate in a 2-bedroom apartment near Fenway. $1200/month including utilities. Available immediately. Must be a student. No pets, sorry!",
    category_name: "Roommates",
    user_email: "emily.davis@harvard.edu"
  },
  {
    title: "Selling MacBook Pro 2020 - $800",
    content: "Selling my MacBook Pro 2020 (13-inch, 8GB RAM, 256GB SSD) in excellent condition. Comes with original charger. Perfect for students. Cash only, pickup in Cambridge.",
    category_name: "For Sale",
    user_email: "david.kim@emerson.edu"
  },
  {
    title: "Campus party this Friday - All welcome!",
    content: "Hosting a party this Friday at our apartment near Northeastern. BYOB, music, games. All students welcome! DM for address and details.",
    category_name: "Events",
    user_email: "jessica.wilson@bc.edu"
  },
  {
    title: "Need help with Python programming",
    content: "Struggling with Python assignment for my CS class. Anyone available to help? Can meet on campus or virtually. Will buy coffee!",
    category_name: "Academic",
    user_email: "lisa.thompson@suffolk.edu"
  }
]

posts = []
posts_data.each do |post_data|
  user = User.find_by(email: post_data[:user_email])
  category = Category.find_by(name: post_data[:category_name])
  
  post = Post.create!(
    title: post_data[:title],
    content: post_data[:content],
    user: user,
    category: category
  )
  posts << post
end

puts "Created #{Post.count} posts"

# Create Sample Comments
puts "Creating sample comments..."
comments_data = [
  {
    content: "I'm interested! What's the exact location?",
    post_title: "Looking for roommate in Allston - $800/month",
    user_email: "sarah.jones@bu.edu"
  },
  {
    content: "Is the apartment pet-friendly? I have a small cat.",
    post_title: "Looking for roommate in Allston - $800/month",
    user_email: "emily.davis@harvard.edu"
  },
  {
    content: "I'll take the Database Systems book! When can I pick it up?",
    post_title: "Free textbooks - Computer Science majors",
    user_email: "john.smith@northeastern.edu"
  },
  {
    content: "I'm interested in the ride share. What time are you planning to leave?",
    post_title: "Weekend trip to NYC - Looking for ride share",
    user_email: "mike.chen@mit.edu"
  },
  {
    content: "Count me in for the study group! When do you want to meet?",
    post_title: "Study group for CS 3500 - Northeastern",
    user_email: "sarah.jones@bu.edu"
  },
  {
    content: "Regina's Pizza on Commonwealth Ave is amazing!",
    post_title: "Best pizza places near campus?",
    user_email: "alex.rodriguez@umb.edu"
  },
  {
    content: "I'm interested in joining the basketball team. What's the skill level?",
    post_title: "Intramural basketball team looking for players",
    user_email: "david.kim@emerson.edu"
  },
  {
    content: "Is the apartment furnished?",
    post_title: "Roommate needed - Fenway area",
    user_email: "lisa.thompson@suffolk.edu"
  },
  {
    content: "Is the MacBook still available? I'm very interested.",
    post_title: "Selling MacBook Pro 2020 - $800",
    user_email: "jessica.wilson@bc.edu"
  },
  {
    content: "I can help with Python! What specific problem are you having?",
    post_title: "Need help with Python programming",
    user_email: "mike.chen@mit.edu"
  }
]

comments_data.each do |comment_data|
  post = Post.find_by(title: comment_data[:post_title])
  user = User.find_by(email: comment_data[:user_email])
  
  Comment.create!(
    content: comment_data[:content],
    post: post,
    user: user
  )
end

puts "Created #{Comment.count} comments"

puts "Seeding completed successfully!"
puts "You can now log in with any of the sample users using 'password123' as the password."
puts "Sample users:"
users_data.each do |user_data|
  puts "- #{user_data[:email]} (#{user_data[:college]})"
end
