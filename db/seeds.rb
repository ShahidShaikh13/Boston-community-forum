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

# Create Sample Users - More realistic and diverse
puts "Creating sample users..."
users_data = [
  # Northeastern University
  { email: "john.smith@northeastern.edu", college: "Northeastern University" },
  { email: "maria.garcia@northeastern.edu", college: "Northeastern University" },
  { email: "james.wilson@northeastern.edu", college: "Northeastern University" },
  { email: "sophia.chen@northeastern.edu", college: "Northeastern University" },
  
  # Boston University
  { email: "sarah.jones@bu.edu", college: "Boston University" },
  { email: "michael.brown@bu.edu", college: "Boston University" },
  { email: "emma.davis@bu.edu", college: "Boston University" },
  { email: "robert.taylor@bu.edu", college: "Boston University" },
  
  # MIT
  { email: "mike.chen@mit.edu", college: "Massachusetts Institute of Technology (MIT)" },
  { email: "anna.zhang@mit.edu", college: "Massachusetts Institute of Technology (MIT)" },
  { email: "kevin.patel@mit.edu", college: "Massachusetts Institute of Technology (MIT)" },
  
  # Harvard University
  { email: "emily.davis@harvard.edu", college: "Harvard University" },
  { email: "william.johnson@harvard.edu", college: "Harvard University" },
  { email: "olivia.martinez@harvard.edu", college: "Harvard University" },
  
  # UMass Boston
  { email: "alex.rodriguez@umb.edu", college: "University of Massachusetts Boston" },
  { email: "jessica.lee@umb.edu", college: "University of Massachusetts Boston" },
  { email: "daniel.kim@umb.edu", college: "University of Massachusetts Boston" },
  
  # Boston College
  { email: "jessica.wilson@bc.edu", college: "Boston College" },
  { email: "christopher.anderson@bc.edu", college: "Boston College" },
  { email: "ashley.thomas@bc.edu", college: "Boston College" },
  
  # Emerson College
  { email: "david.kim@emerson.edu", college: "Emerson College" },
  { email: "rachel.green@emerson.edu", college: "Emerson College" },
  { email: "brandon.white@emerson.edu", college: "Emerson College" },
  
  # Suffolk University
  { email: "lisa.thompson@suffolk.edu", college: "Suffolk University" },
  { email: "matthew.clark@suffolk.edu", college: "Suffolk University" },
  { email: "amanda.lewis@suffolk.edu", college: "Suffolk University" },
  
  # Simmons University
  { email: "ryan.patel@simmons.edu", college: "Simmons University" },
  { email: "lauren.hall@simmons.edu", college: "Simmons University" },
  { email: "tyler.allen@simmons.edu", college: "Simmons University" },
  
  # Wentworth Institute
  { email: "amanda.lee@wit.edu", college: "Wentworth Institute of Technology" },
  { email: "nathan.young@wit.edu", college: "Wentworth Institute of Technology" },
  { email: "stephanie.king@wit.edu", college: "Wentworth Institute of Technology" },
  
  # MassArt
  { email: "isabella.wright@massart.edu", college: "Massachusetts College of Art and Design" },
  { email: "ethan.scott@massart.edu", college: "Massachusetts College of Art and Design" },
  
  # Berklee
  { email: "madison.torres@berklee.edu", college: "Berklee College of Music" },
  { email: "logan.morris@berklee.edu", college: "Berklee College of Music" },
  
  # Tufts
  { email: "ava.nguyen@tufts.edu", college: "Tufts University" },
  { email: "sebastian.carter@tufts.edu", college: "Tufts University" },
  
  # Brandeis
  { email: "chloe.mitchell@brandeis.edu", college: "Brandeis University" },
  { email: "gabriel.perez@brandeis.edu", college: "Brandeis University" }
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

# Create Sample Posts - More diverse and realistic
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
  },
  {
    title: "Looking for gym buddy - Planet Fitness",
    content: "Looking for a workout partner at Planet Fitness in Allston. I usually go around 6-7 PM on weekdays. Anyone interested in joining?",
    category_name: "Sports & Recreation",
    user_email: "maria.garcia@northeastern.edu"
  },
  {
    title: "Selling bike - $150",
    content: "Selling my mountain bike. Good condition, perfect for getting around campus. Pickup in Brighton. DM for photos!",
    category_name: "For Sale",
    user_email: "michael.brown@bu.edu"
  },
  {
    title: "Study abroad advice needed",
    content: "Thinking about studying abroad next semester. Anyone have experience with programs in Europe? Looking for recommendations!",
    category_name: "General Discussion",
    user_email: "emma.davis@bu.edu"
  },
  {
    title: "Coffee meetup - This Saturday",
    content: "Anyone want to grab coffee this Saturday? Thinking of meeting at Thinking Cup in Back Bay. Good place to network and make friends!",
    category_name: "Events",
    user_email: "anna.zhang@mit.edu"
  },
  {
    title: "Help with calculus homework",
    content: "Stuck on some calculus problems. Anyone good at math who can help? Can meet at the library or virtually.",
    category_name: "Academic",
    user_email: "kevin.patel@mit.edu"
  },
  {
    title: "Best study spots on campus?",
    content: "Looking for quiet places to study. Any recommendations for good study spots with good wifi?",
    category_name: "General Discussion",
    user_email: "william.johnson@harvard.edu"
  },
  {
    title: "Selling textbooks - Various subjects",
    content: "Selling textbooks for various classes. DM me for the list. All in good condition, reasonable prices!",
    category_name: "For Sale",
    user_email: "olivia.martinez@harvard.edu"
  },
  {
    title: "Looking for ride to airport",
    content: "Need a ride to Logan Airport on Friday at 6 AM. Willing to pay for gas and parking. DM me if available!",
    category_name: "Rideshare",
    user_email: "jessica.lee@umb.edu"
  },
  {
    title: "Roommate needed - Brighton area",
    content: "Looking for a roommate in Brighton. 2-bedroom apartment, $900/month including utilities. Available immediately.",
    category_name: "Roommates",
    user_email: "daniel.kim@umb.edu"
  },
  {
    title: "Intramural soccer team",
    content: "Starting an intramural soccer team. Need players of all skill levels. Games are on Saturdays. DM if interested!",
    category_name: "Sports & Recreation",
    user_email: "christopher.anderson@bc.edu"
  },
  {
    title: "Free furniture - Moving out",
    content: "Giving away furniture: desk, chair, small bookshelf. Pickup in Allston. First come, first served!",
    category_name: "For Sale",
    user_email: "ashley.thomas@bc.edu"
  },
  {
    title: "Photography club meeting",
    content: "Photography club meeting this Thursday at 7 PM. All skill levels welcome. We'll be discussing street photography techniques.",
    category_name: "Events",
    user_email: "rachel.green@emerson.edu"
  },
  {
    title: "Selling camera equipment",
    content: "Selling DSLR camera and lenses. Great for photography students. DM for details and photos.",
    category_name: "For Sale",
    user_email: "brandon.white@emerson.edu"
  },
  {
    title: "Help with resume writing",
    content: "Need help with my resume for internship applications. Anyone have experience with resume writing?",
    category_name: "General Discussion",
    user_email: "matthew.clark@suffolk.edu"
  },
  {
    title: "Looking for study group - Business Law",
    content: "Looking for study group for Business Law class. We can meet on campus or virtually. Anyone interested?",
    category_name: "Academic",
    user_email: "amanda.lewis@suffolk.edu"
  },
  {
    title: "Free concert tickets - Tonight",
    content: "Have 2 free tickets to a concert tonight. Can't go anymore. DM me if interested!",
    category_name: "Events",
    user_email: "lauren.hall@simmons.edu"
  },
  {
    title: "Selling laptop - $400",
    content: "Selling my Dell laptop. Good for basic school work. Pickup in Fenway area.",
    category_name: "For Sale",
    user_email: "tyler.allen@simmons.edu"
  },
  {
    title: "Looking for coding partner",
    content: "Looking for someone to practice coding with. Working on web development projects. Anyone interested?",
    category_name: "Technology",
    user_email: "nathan.young@wit.edu"
  },
  {
    title: "Best restaurants near campus?",
    content: "Looking for restaurant recommendations near campus. Any hidden gems?",
    category_name: "Food & Dining",
    user_email: "stephanie.king@wit.edu"
  },
  {
    title: "Art supplies for sale",
    content: "Selling art supplies: paints, brushes, canvas. Great for art students. DM for list and prices.",
    category_name: "For Sale",
    user_email: "isabella.wright@massart.edu"
  },
  {
    title: "Looking for band members",
    content: "Looking for musicians to form a band. Need guitarist, bassist, and drummer. All genres welcome!",
    category_name: "Events",
    user_email: "madison.torres@berklee.edu"
  },
  {
    title: "Study abroad in Japan",
    content: "Anyone interested in studying abroad in Japan? Looking for travel buddies and advice!",
    category_name: "General Discussion",
    user_email: "ava.nguyen@tufts.edu"
  },
  {
    title: "Selling musical instruments",
    content: "Selling guitar, keyboard, and microphone. All in good condition. DM for details!",
    category_name: "For Sale",
    user_email: "logan.morris@berklee.edu"
  },
  {
    title: "Looking for research participants",
    content: "Conducting research study on social media usage. Need participants. $20 compensation. DM for details!",
    category_name: "General Discussion",
    user_email: "chloe.mitchell@brandeis.edu"
  },
  {
    title: "Free tutoring - Math and Science",
    content: "Offering free tutoring in math and science subjects. Available on weekends. DM me if interested!",
    category_name: "Academic",
    user_email: "gabriel.perez@brandeis.edu"
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

# Create Sample Comments - More diverse interactions
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
  },
  {
    content: "I'm interested in the gym buddy! What's your workout routine?",
    post_title: "Looking for gym buddy - Planet Fitness",
    user_email: "emma.davis@bu.edu"
  },
  {
    content: "Is the bike still available? Can you send photos?",
    post_title: "Selling bike - $150",
    user_email: "maria.garcia@northeastern.edu"
  },
  {
    content: "I studied in Spain last semester! Highly recommend it.",
    post_title: "Study abroad advice needed",
    user_email: "anna.zhang@mit.edu"
  },
  {
    content: "I'd love to join! What time on Saturday?",
    post_title: "Coffee meetup - This Saturday",
    user_email: "kevin.patel@mit.edu"
  },
  {
    content: "I can help with calculus! What specific problems?",
    post_title: "Help with calculus homework",
    user_email: "william.johnson@harvard.edu"
  },
  {
    content: "The library on the 3rd floor is usually quiet.",
    post_title: "Best study spots on campus?",
    user_email: "olivia.martinez@harvard.edu"
  },
  {
    content: "I need a ride too! Can we coordinate?",
    post_title: "Looking for ride to airport",
    user_email: "christopher.anderson@bc.edu"
  },
  {
    content: "I'm interested in the soccer team! When do practices start?",
    post_title: "Intramural soccer team",
    user_email: "ashley.thomas@bc.edu"
  },
  {
    content: "I'll take the desk and chair! When can I pick up?",
    post_title: "Free furniture - Moving out",
    user_email: "rachel.green@emerson.edu"
  },
  {
    content: "I'm interested in joining the photography club!",
    post_title: "Photography club meeting",
    user_email: "brandon.white@emerson.edu"
  },
  {
    content: "I can help with resume writing! DM me.",
    post_title: "Help with resume writing",
    user_email: "matthew.clark@suffolk.edu"
  },
  {
    content: "Count me in for the study group!",
    post_title: "Looking for study group - Business Law",
    user_email: "amanda.lewis@suffolk.edu"
  },
  {
    content: "I'll take the tickets! Still available?",
    post_title: "Free concert tickets - Tonight",
    user_email: "lauren.hall@simmons.edu"
  },
  {
    content: "I'm interested in the laptop! What are the specs?",
    post_title: "Selling laptop - $400",
    user_email: "tyler.allen@simmons.edu"
  },
  {
    content: "I'd love to practice coding together!",
    post_title: "Looking for coding partner",
    user_email: "nathan.young@wit.edu"
  },
  {
    content: "Try the Italian place on Boylston Street!",
    post_title: "Best restaurants near campus?",
    user_email: "stephanie.king@wit.edu"
  },
  {
    content: "I'm interested in the art supplies! What do you have?",
    post_title: "Art supplies for sale",
    user_email: "isabella.wright@massart.edu"
  },
  {
    content: "I play guitar! Interested in joining the band.",
    post_title: "Looking for band members",
    user_email: "madison.torres@berklee.edu"
  },
  {
    content: "I'm planning to study in Japan too!",
    post_title: "Study abroad in Japan",
    user_email: "ava.nguyen@tufts.edu"
  },
  {
    content: "I'm interested in the guitar! What brand is it?",
    post_title: "Selling musical instruments",
    user_email: "logan.morris@berklee.edu"
  },
  {
    content: "I'd be interested in participating in the study!",
    post_title: "Looking for research participants",
    user_email: "chloe.mitchell@brandeis.edu"
  },
  {
    content: "I need help with calculus! When are you available?",
    post_title: "Free tutoring - Math and Science",
    user_email: "gabriel.perez@brandeis.edu"
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
