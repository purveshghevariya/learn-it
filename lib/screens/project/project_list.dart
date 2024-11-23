class ProjectList {
  static List projectListData = [
    {
      "title": "Online Grocery Store with Delivery Slot Booking",
      "name": "FreshCart",
      "technology": {
        "frontend": ["Flutter", "React"],
        "backend": ["Node.js", "Django"],
        "database": ["MongoDB", "PostgreSQL"]
      },
      "description":
          "An online platform for purchasing groceries with a feature to book convenient delivery slots.",
      "howToMake":
          "Design the user interface to display product categories and a delivery calendar. Implement functionalities for user registration, product search, cart management, and slot booking. Develop APIs to handle product details, orders, and slot availability. Use MongoDB or PostgreSQL to store product and order data.",
      "types": ["Mobile App", "Website"]
    },
    {
      "title": "Customizable T-shirt Printing Website/App",
      "name": "TeeMaker",
      "technology": {
        "frontend": ["Flutter", "React"],
        "backend": ["Node.js", "PHP"],
        "database": ["MySQL", "Firebase"]
      },
      "description":
          "A platform where users can customize and order T-shirts with their designs.",
      "howToMake":
          "Create an interactive UI for selecting T-shirt styles, colors, and adding custom designs. Implement features to upload designs and preview them on T-shirts. Develop APIs to handle order processing and design files. Store product and order details in MySQL or Firebase.",
      "types": ["Mobile App", "Website"]
    },
    {
      "title": "Second-hand Book Selling Platform",
      "name": "BookBazaar",
      "technology": {
        "frontend": ["Flutter", "React"],
        "backend": ["Node.js", "Ruby on Rails"],
        "database": ["MongoDB", "MySQL"]
      },
      "description":
          "A platform for buying and selling second-hand books with user reviews and ratings.",
      "howToMake":
          "Design a UI for users to list books for sale and search for books to buy. Implement functionalities like book listing, search filters, and user ratings. Build APIs to manage user data, book details, and transactions. Store data in MongoDB or MySQL.",
      "types": ["Mobile App", "Website"]
    },
    {
      "title": "Social Media App for Book Readers and Reviews",
      "name": "LitConnect",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "A platform for book lovers to share reviews, discuss books, and connect with fellow readers.",
      "howToMake":
          "Create a UI with features for book discussions, reviews, and user profiles. Implement functionalities for adding books, posting reviews, and connecting with other readers. Develop APIs to handle user interactions and store book and review data in MongoDB.",
      "types": ["Mobile App"]
    },
    {
      "title": "Event-based Networking App (For College Events or Meetups)",
      "name": "EventMate",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Django"],
        "database": ["PostgreSQL"]
      },
      "description":
          "An app to facilitate networking among attendees of college events or meetups, with features like event schedules and chat options.",
      "howToMake":
          "Design a UI for event details, attendee profiles, and chat functionalities. Implement features for event registration, networking, and live updates. Build APIs for event management and user connections, with PostgreSQL for data storage.",
      "types": ["Mobile App"]
    },
    {
      "title": "Anonymous Confession Sharing Website",
      "name": "Confessly",
      "technology": {
        "frontend": ["React"],
        "backend": ["PHP"],
        "database": ["MySQL"]
      },
      "description":
          "A platform for anonymously sharing confessions and reading others' stories.",
      "howToMake":
          "Design a simple and intuitive UI for users to post and read anonymous confessions. Implement features for content moderation and upvoting. Develop backend APIs for confession submission and data management. Store confessions in a MySQL database.",
      "types": ["Website"]
    },
    {
      "title": "Hobby-based Social Networking App",
      "name": "HobbyHub",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["Firebase"]
      },
      "description":
          "A social networking app for users to connect based on shared hobbies and interests.",
      "howToMake":
          "Create a UI that categorizes hobbies and allows users to join groups. Implement features for chatting, group activities, and profile matching. Build APIs to manage user data and group activities, with Firebase for real-time database and user authentication.",
      "types": ["Mobile App"]
    },
    {
      "title": "Influencer Collaboration Platform",
      "name": "CollabSphere",
      "technology": {
        "frontend": ["React", "Flutter"],
        "backend": ["Spring Boot"],
        "database": ["MongoDB"]
      },
      "description":
          "A platform for influencers to connect with brands and collaborate on projects.",
      "howToMake":
          "Design a UI for influencer profiles, brand listings, and collaboration projects. Implement functionalities for profile creation, project proposals, and messaging. Develop APIs to manage collaborations and user interactions, with MongoDB for data storage.",
      "types": ["Both"]
    },
    {
      "title": "Online Electronics Store with Comparison Features",
      "name": "TechMart",
      "technology": {
        "frontend": ["Flutter", "React"],
        "backend": ["Node.js", "Spring Boot"],
        "database": ["MongoDB", "PostgreSQL"]
      },
      "description":
          "An online store for electronics with features to compare products and read reviews.",
      "howToMake":
          "Develop a UI showcasing electronics categories and product details. Implement a comparison feature to display product specifications side-by-side. Build APIs for product search, comparison, and order management. Store data in MongoDB or PostgreSQL.",
      "types": ["Mobile App", "Website"]
    },
    {
      "title": "Fitness Tracker with Diet Suggestions",
      "name": "FitBuddy",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"],
        "AI": ["TensorFlow", "OpenAI API"]
      },
      "description":
          "A fitness tracker that monitors activity levels and provides personalized diet suggestions.",
      "howToMake":
          "Design a UI for tracking fitness activities, calorie intake, and diet plans. Use AI to recommend personalized diets based on user goals. Build APIs for fitness data analysis and diet plan management, storing data in MongoDB.",
      "types": ["Mobile App"]
    },
    {
      "title": "Mental Health Therapy Chatbot App",
      "name": "MindEase",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Python (FastAPI)"],
        "database": ["PostgreSQL"],
        "AI": ["OpenAI API", "Natural Language Processing"]
      },
      "description":
          "An app that provides mental health support through an AI-powered therapy chatbot.",
      "howToMake":
          "Create a UI for users to chat with an AI-driven therapist. Implement NLP for understanding and responding to user concerns. Build APIs for conversation tracking and data analysis, storing data securely in PostgreSQL.",
      "types": ["Mobile App"]
    },
    {
      "title": "Medical Appointment Booking System",
      "name": "MediBook",
      "technology": {
        "frontend": ["React"],
        "backend": ["Django"],
        "database": ["MySQL"]
      },
      "description":
          "A system for booking medical appointments with doctors, clinics, and hospitals.",
      "howToMake":
          "Design a UI for searching doctors, viewing availability, and booking appointments. Implement features for reminders and patient profiles. Develop APIs to manage doctor schedules, patient bookings, and notifications, with MySQL for data storage.",
      "types": ["Website"]
    },
    {
      "title": "Yoga and Meditation Guidance App with AR/VR",
      "name": "ZenAR",
      "technology": {
        "frontend": ["Unity (AR/VR)", "Flutter"],
        "backend": ["Node.js"],
        "database": ["Firebase"],
        "AR/VR": ["Unity3D", "ARKit", "ARCore"]
      },
      "description":
          "An app that guides users through yoga and meditation sessions using AR/VR technologies.",
      "howToMake":
          "Develop a UI for yoga pose guidance and meditation sessions. Integrate AR/VR to provide immersive experiences. Build APIs to manage session data and progress tracking, using Firebase for real-time updates and authentication.",
      "types": ["Mobile App"]
    },
    {
      "title": "Period Tracker App with Health Tips",
      "name": "CycleCare",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "An app for tracking menstrual cycles and providing health tips and reminders.",
      "howToMake":
          "Create a UI for users to input cycle data and view predictions. Implement features for reminders, health tips, and progress tracking. Build APIs for cycle prediction and data management, with MongoDB for storing user data.",
      "types": ["Mobile App"]
    },
    {
      "title": "Language Learning App with AI Chatbot",
      "name": "LingoAI",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"],
        "AI": ["OpenAI API", "TensorFlow"]
      },
      "description":
          "A mobile app for learning languages through lessons and an AI chatbot for conversation practice.",
      "howToMake":
          "Design a UI with interactive lessons, progress tracking, and a chatbot interface. Implement AI-driven natural language processing for the chatbot and features for speech recognition. Build APIs for managing lessons and tracking user progress, with MongoDB for data storage.",
      "types": ["Mobile App"]
    },
    {
      "title": "Learning Management System for College Assignments",
      "name": "AssignPro",
      "technology": {
        "frontend": ["React"],
        "backend": ["Django"],
        "database": ["PostgreSQL"]
      },
      "description":
          "A system for managing and submitting college assignments with grading and feedback features.",
      "howToMake":
          "Develop a UI for students and teachers to upload assignments, submit work, and provide feedback. Implement features for notifications, deadlines, and grade tracking. Create APIs for assignment submission and feedback management, with PostgreSQL for data storage.",
      "types": ["Website"]
    },
    {
      "title": "Doubt-Solving App for Students Using Video Chat",
      "name": "DoubtClear",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["Firebase"],
        "video": ["WebRTC"]
      },
      "description":
          "An app for students to connect with tutors and solve doubts via video chat.",
      "howToMake":
          "Design a UI for students to post doubts and schedule video sessions with tutors. Implement video chat features using WebRTC and real-time messaging with Firebase. Develop APIs for session scheduling and user management.",
      "types": ["Mobile App"]
    },
    {
      "title": "Gamified Learning App for Coding Skills",
      "name": "CodeQuest",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "A mobile app that teaches coding skills through interactive games and challenges.",
      "howToMake":
          "Create a UI with coding puzzles, levels, and achievements. Implement features for coding exercises, real-time feedback, and leaderboards. Build APIs to manage user progress and challenges, storing data in MongoDB.",
      "types": ["Mobile App"]
    },
    {
      "title": "Online Library Management Website",
      "name": "LibManage",
      "technology": {
        "frontend": ["React"],
        "backend": ["Spring Boot"],
        "database": ["MySQL"]
      },
      "description":
          "A platform for managing library resources, book rentals, and user accounts.",
      "howToMake":
          "Design a UI for users to search, borrow, and return books. Implement features for inventory management, user accounts, and notifications. Develop APIs for book management and transaction tracking, with MySQL for data storage.",
      "types": ["Website"]
    },
    {
      "title": "Subscription-based Movie DVD Rental App",
      "name": "CineRent",
      "technology": {
        "frontend": ["Flutter", "React"],
        "backend": ["Node.js", "Django"],
        "database": ["MySQL", "Firebase"]
      },
      "description":
          "An app for renting movie DVDs on a subscription basis with delivery options.",
      "howToMake":
          "Design a UI for browsing DVDs and managing subscriptions. Implement features like movie search, subscription management, and rental tracking. Build APIs to handle user accounts, movie listings, and subscription payments. Use MySQL or Firebase to manage user and rental data.",
      "types": ["Mobile App", "Website"]
    },
    {
      "title": "Tailor Management System",
      "name": "Darzi",
      "technology": {
        "frontend": ["Flutter", "React", "Android"],
        "backend": ["NodeJs", "PHP"],
        "database": ["MongoDB", "MySQL"]
      },
      "description":
          "A system for managing tailoring services including orders, customer details, and tailoring jobs.",
      "howToMake":
          "Start by designing user interfaces for customers and tailors. Then, implement functionalities to add orders, track status, and manage customer details. Build the backend APIs to handle requests, and store data in MongoDB or MySQL.",
      "types": ["Mobile App", "Website"]
    },
    {
      "title": "Expense Tracking App with Budget Forecast",
      "name": "Expensify",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "An app to track daily expenses and forecast future budgets based on spending patterns.",
      "howToMake":
          "Design a UI for inputting and categorizing expenses, with visual graphs for tracking spending. Implement budget forecasting based on past data. Develop APIs to manage expense records and budget calculations, storing data in MongoDB.",
      "types": ["Mobile App"]
    },
    {
      "title": "Online Loan Calculator and Application System",
      "name": "LoanEase",
      "technology": {
        "frontend": ["React"],
        "backend": ["Node.js"],
        "database": ["MySQL"]
      },
      "description":
          "A platform to calculate loan installments and submit loan applications to financial institutions.",
      "howToMake":
          "Create a UI for users to input loan amounts, terms, and interest rates, and calculate monthly payments. Implement a system for users to submit loan applications. Build APIs for loan calculations and application processing, with MySQL for data storage.",
      "types": ["Website"]
    },
    {
      "title": "Crowdfunding Website for Social Causes",
      "name": "CauseFund",
      "technology": {
        "frontend": ["React"],
        "backend": ["Django"],
        "database": ["PostgreSQL"]
      },
      "description":
          "A website for users to donate to social causes and create campaigns for raising funds.",
      "howToMake":
          "Design a UI for users to browse campaigns, donate to causes, and track progress. Implement features for campaign creation, payment integration, and donation tracking. Develop APIs for campaign management, donations, and user accounts, with PostgreSQL for data storage.",
      "types": ["Website"]
    },
    {
      "title": "Cryptocurrency Tracker App",
      "name": "CryptoTrack",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "An app to track cryptocurrency prices and manage portfolios in real-time.",
      "howToMake":
          "Create a UI for displaying live cryptocurrency price data and portfolio management. Implement features for tracking coin prices, setting alerts, and managing personal holdings. Build APIs to fetch live price data and manage user portfolios, with MongoDB for data storage.",
      "types": ["Mobile App"]
    },
    {
      "title": "Bill Splitter App for Friends",
      "name": "SplitIt",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["Firebase"]
      },
      "description":
          "An app to help groups of friends split bills and keep track of shared expenses.",
      "howToMake":
          "Design a UI for adding expenses and dividing the total amount among participants. Implement features for tracking payments and balancing shared amounts. Build APIs to manage bill records, with Firebase for real-time updates and user authentication.",
      "types": ["Mobile App"]
    },
    {
      "title": "Travel Itinerary Planner App with Cost Estimation",
      "name": "TravelMate",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "A travel itinerary planner app that helps users plan their trips and estimate costs for transportation, accommodation, and activities.",
      "howToMake":
          "Design a UI for creating and managing travel itineraries. Implement features for cost estimation based on user input for destinations, accommodation, and activities. Build APIs to calculate and store cost data, with MongoDB for data management.",
      "types": ["Mobile App"]
    },
    {
      "title": "Hotel Booking Website with Real-time Reviews",
      "name": "HotelHub",
      "technology": {
        "frontend": ["React"],
        "backend": ["Django"],
        "database": ["PostgreSQL"]
      },
      "description":
          "A website for users to search and book hotels, with real-time customer reviews.",
      "howToMake":
          "Design a UI for hotel search, booking, and viewing customer reviews. Implement features for real-time review updates, hotel availability, and user accounts. Develop APIs to manage bookings, reviews, and hotel data, with PostgreSQL for storage.",
      "types": ["Website"]
    },
    {
      "title": "Local Guide App for Hidden Tourist Spots",
      "name": "SecretSpots",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "An app to discover and explore hidden local tourist spots with guides and recommendations from locals.",
      "howToMake":
          "Design a UI for users to search for hidden spots and read local guides. Implement features for bookmarking, navigation, and spot ratings. Build APIs to store and manage spot information, reviews, and guides, with MongoDB for data storage.",
      "types": ["Mobile App"]
    },
    {
      "title": "Car Rental App with Route Suggestions",
      "name": "RentGo",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["Firebase"]
      },
      "description":
          "A car rental app that helps users rent vehicles and suggests optimal routes for their journeys.",
      "howToMake":
          "Create a UI for users to browse available cars, book rentals, and view suggested routes. Implement features for route planning, car availability, and real-time notifications. Build APIs for booking management and route suggestions, with Firebase for real-time data.",
      "types": ["Mobile App"]
    },
    {
      "title": "Virtual Tour App for Historical Places",
      "name": "HistoryExplorer",
      "technology": {
        "frontend": ["Unity (AR/VR)", "Flutter"],
        "backend": ["Node.js"],
        "database": ["Firebase"]
      },
      "description":
          "An app providing virtual tours of historical places with AR/VR integration.",
      "howToMake":
          "Design an immersive AR/VR UI for virtual tours of historical sites. Use Unity for AR/VR development and implement virtual guides. Build APIs to manage virtual tour content and real-time updates, using Firebase for data storage.",
      "types": ["Mobile App"]
    },
    {
      "title": "Food Recipe Sharing Website with Video Tutorials",
      "name": "RecipeHub",
      "technology": {
        "frontend": ["React"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "A website where users can share food recipes along with video tutorials and ratings.",
      "howToMake":
          "Design a UI for users to browse, upload, and search food recipes with video tutorials. Implement features for recipe ratings, comments, and video integration. Develop APIs to manage recipe data, videos, and user interactions, with MongoDB for storage.",
      "types": ["Website"]
    },
    {
      "title": "Restaurant Booking App with Online Menu",
      "name": "DineIn",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "An app for users to book tables at restaurants and view their online menus.",
      "howToMake":
          "Create a UI for users to browse restaurants, view menus, and make bookings. Implement features for real-time booking confirmation and menu updates. Build APIs for restaurant management, bookings, and menu data, with MongoDB for storage.",
      "types": ["Mobile App"]
    },
    {
      "title": "Food Waste Management App for Donating Excess Food",
      "name": "FoodDonate",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["Firebase"]
      },
      "description":
          "An app that helps users donate excess food to those in need and reduce food waste.",
      "howToMake":
          "Design a UI for users to donate food, track donations, and receive notifications. Implement features for food donation listings, recipient matching, and real-time updates. Build APIs for managing donations and users, with Firebase for real-time data.",
      "types": ["Mobile App"]
    },
    {
      "title": "Coffee Shop Loyalty Card App",
      "name": "BrewPoints",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "An app for coffee shop customers to track their purchases and earn loyalty points.",
      "howToMake":
          "Create a UI for users to track coffee shop visits, earn points, and redeem rewards. Implement features for scanning receipts and reward tracking. Build APIs for point accumulation, reward management, and user data, using MongoDB for storage.",
      "types": ["Mobile App"]
    },
    {
      "title": "Online Cake Ordering Website with Customization",
      "name": "CakeCraft",
      "technology": {
        "frontend": ["React"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "A website that allows users to order customized cakes with various designs and flavors.",
      "howToMake":
          "Design a UI for users to customize cakes by selecting flavors, sizes, and decorations. Implement features for order management, payment, and delivery tracking. Develop APIs to manage orders, customizations, and user data, with MongoDB for storage.",
      "types": ["Website"]
    },
    {
      "title": "Quiz Game App with Multiplayer Support",
      "name": "QuizMaster",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "A quiz game app with multiplayer support, allowing users to compete in real-time quizzes on various topics.",
      "howToMake":
          "Design a UI for displaying questions, scores, and player rankings. Implement real-time multiplayer functionality using WebSockets or Firebase. Build APIs for managing questions, user accounts, and game data, with MongoDB for storing results and user profiles.",
      "types": ["Mobile App"]
    },
    {
      "title": "Movie Recommendation System Based on Preferences",
      "name": "MovieMatch",
      "technology": {
        "frontend": ["React"],
        "backend": ["Python (Flask)"],
        "database": ["MySQL"]
      },
      "description":
          "A movie recommendation system that suggests movies based on user preferences and viewing history.",
      "howToMake":
          "Design a UI for users to input preferences and view recommended movies. Implement algorithms to suggest movies based on genres, ratings, and user behavior. Develop APIs to fetch movie data and user preferences, with MySQL for data storage.",
      "types": ["Website"]
    },
    {
      "title": "Online Music Streaming App with Podcasts",
      "name": "Streamify",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "A music streaming app that includes podcasts and allows users to stream their favorite songs and shows.",
      "howToMake":
          "Design a UI for browsing music, podcasts, and playlists. Implement streaming features for audio playback and podcast subscriptions. Build APIs for managing music and podcast data, user preferences, and playlists, with MongoDB for storing media data and user accounts.",
      "types": ["Mobile App"]
    },
    {
      "title": "Virtual Karaoke App",
      "name": "KaraokeStar",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["Firebase"]
      },
      "description":
          "A karaoke app where users can sing along to their favorite songs and share their performances.",
      "howToMake":
          "Create a UI for song selection, lyrics display, and recording user performances. Implement real-time features for sharing and rating performances. Build APIs to manage songs, user accounts, and recordings, with Firebase for storing media and user data.",
      "types": ["Mobile App"]
    },
    {
      "title": "Property Listing Website with 3D Virtual Tours",
      "name": "VirtualEstate",
      "technology": {
        "frontend": ["React"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "A property listing website that features 3D virtual tours of homes for sale or rent, providing a realistic experience of the property.",
      "howToMake":
          "Design a UI for property listings, filtering, and viewing 3D virtual tours. Integrate 3D viewing tools like WebGL or external APIs. Develop backend APIs for listing management, user registration, and filtering properties, using MongoDB for storage.",
      "types": ["Website"]
    },
    {
      "title": "App for Rental Agreements and Lease Management",
      "name": "LeaseTrack",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "An app that allows tenants and landlords to manage rental agreements, lease terms, and payments.",
      "howToMake":
          "Design a UI for landlords and tenants to create, view, and manage rental agreements. Implement features for document signing, rent tracking, and payment reminders. Build backend APIs for agreement creation and status tracking, with MongoDB for storage.",
      "types": ["Mobile App"]
    },
    {
      "title": "Housing Society Management Website/App",
      "name": "SocietyManage",
      "technology": {
        "frontend": ["Flutter", "React"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "A platform for housing societies to manage maintenance requests, billing, events, and communications between residents and the management team.",
      "howToMake":
          "Design UIs for residents and society management teams to handle requests, billing, and communication. Implement features for event management, payments, and complaints. Develop APIs for data management and communication, using MongoDB for backend storage.",
      "types": ["Mobile App", "Website"]
    },
    {
      "title": "Real Estate Agent Finder App",
      "name": "AgentConnect",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "An app to help users find and connect with real estate agents based on location, expertise, and user reviews.",
      "howToMake":
          "Design a UI for users to search for agents, view profiles, and read reviews. Implement features for messaging and rating agents. Build backend APIs for agent profiles, reviews, and search functionality, with MongoDB for storing user and agent data.",
      "types": ["Mobile App"]
    },
    {
      "title": "Smart Home Control Dashboard",
      "name": "SmartHomeControl",
      "technology": {
        "frontend": ["React"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "A dashboard that allows users to control and monitor their smart home devices like lights, thermostats, security cameras, and more.",
      "howToMake":
          "Design a UI to control different smart home devices with real-time status updates. Integrate APIs for controlling IoT devices via protocols like MQTT or HTTP. Build backend APIs for device management and status tracking, using MongoDB for data storage.",
      "types": ["Website"]
    },
    {
      "title": "Carbon Footprint Calculator App",
      "name": "EcoTrack",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "An app that helps users calculate their carbon footprint based on daily activities like transportation, energy use, and waste.",
      "howToMake":
          "Design a UI for users to input their daily activities and get an estimate of their carbon footprint. Implement calculations based on predefined formulas. Build APIs to store user data and provide feedback on reducing carbon footprints, using MongoDB for storage.",
      "types": ["Mobile App"]
    },
    {
      "title": "Waste Segregation Guide App with AR",
      "name": "WasteSortAR",
      "technology": {
        "frontend": ["Flutter", "ARCore"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "An app that uses augmented reality to help users sort waste by showing which bin to place different types of waste.",
      "howToMake":
          "Design an AR-based UI that overlays instructions on the waste to show where to dispose of it. Integrate ARCore or ARKit for augmented reality functionality. Develop backend APIs for waste categorization and educational content, with MongoDB for storing data.",
      "types": ["Mobile App"]
    },
    {
      "title": "Plant Care and Gardening Tips App",
      "name": "PlantBuddy",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "An app that provides users with tips and reminders for plant care and gardening, including watering schedules and fertilization advice.",
      "howToMake":
          "Design a UI for users to track their plants, set reminders, and receive care tips. Implement features like plant identification and reminders based on plant type. Build APIs for storing plant data and care schedules, with MongoDB for backend storage.",
      "types": ["Mobile App"]
    },
    {
      "title": "Renewable Energy Resource Finder Website",
      "name": "RenewEnergy",
      "technology": {
        "frontend": ["React"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "A website that helps users find renewable energy resources such as solar panel installers, wind energy providers, and more.",
      "howToMake":
          "Design a UI that allows users to search for renewable energy services based on location and energy type. Implement features for user reviews and ratings. Build backend APIs for service providers, reviews, and search functionality, with MongoDB for storing data.",
      "types": ["Website"]
    },
    {
      "title": "Recyclable Item Pickup Request App",
      "name": "RecyclePick",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "An app that allows users to request pickups for recyclable items, promoting recycling in their local communities.",
      "howToMake":
          "Design a UI where users can schedule pickups for recyclables. Implement features for tracking requests, viewing pickup status, and scheduling. Build backend APIs for managing pickup requests and user data, using MongoDB for storage.",
      "types": ["Mobile App"]
    },
    {
      "title": "AR-based Treasure Hunt Game",
      "name": "TreasureQuest",
      "technology": {
        "frontend": ["Unity (AR)"],
        "backend": ["Node.js"],
        "database": ["Firebase"]
      },
      "description":
          "An augmented reality treasure hunt game where players follow clues in the real world to find hidden treasures.",
      "howToMake":
          "Design an AR-based UI with Unity to create a treasure map and interactive clues. Implement features for geolocation, clues, and treasure hunting. Build APIs to manage game data, progress, and user accounts, using Firebase for real-time interaction and data storage.",
      "types": ["Mobile App"]
    },
    {
      "title": "Inventory Management App for Small Businesses",
      "name": "StockTrack",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "An inventory management app designed for small businesses to track stock, sales, and product details.",
      "howToMake":
          "Design a UI for adding products, tracking stock levels, and generating sales reports. Implement features for stock alerts, product categorization, and reporting. Build APIs for managing inventory data and user access, with MongoDB for storage.",
      "types": ["Mobile App"]
    },
    {
      "title": "Task Management App for Teams",
      "name": "TaskMaster",
      "technology": {
        "frontend": ["React"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "A task management app that helps teams organize, assign, and track tasks in real-time.",
      "howToMake":
          "Design a UI for creating, assigning, and tracking tasks. Implement real-time updates and notifications for task status changes. Develop APIs for task management, user assignments, and team collaboration, with MongoDB for storing task data and team information.",
      "types": ["Mobile App"]
    },
    {
      "title": "Resume Builder Website with Predefined Templates",
      "name": "ResumeGen",
      "technology": {
        "frontend": ["React"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "A website where users can build resumes using predefined templates and customize them based on their profiles.",
      "howToMake":
          "Design a UI for users to fill in personal information, job experience, and education, selecting from predefined templates. Implement resume generation in PDF format. Develop APIs for managing user data and resume customization, with MongoDB for data storage.",
      "types": ["Website"]
    },
    {
      "title": "Document Sharing App with Permissions",
      "name": "DocShare",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["Firebase"]
      },
      "description":
          "An app that allows users to securely share documents with others, with customizable permission settings.",
      "howToMake":
          "Create a UI for uploading and sharing documents, with options to set permissions for each document. Implement features for document access control, tracking, and notification. Build APIs for managing documents, permissions, and user access, using Firebase for real-time data storage.",
      "types": ["Mobile App"]
    },
    {
      "title": "Business Card Scanner App",
      "name": "CardScanner",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "A business card scanner app that extracts contact details from scanned cards and saves them to the user's address book.",
      "howToMake":
          "Design a UI for scanning business cards and extracting contact details such as name, phone number, and email address. Implement OCR (Optical Character Recognition) for card scanning. Build APIs to save scanned data and manage contact information, with MongoDB for storing contacts.",
      "types": ["Mobile App"]
    },
    {
      "title": "Public Transport Tracking App",
      "name": "TransitTrack",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "An app that tracks public transport vehicles in real-time, providing users with schedules, route details, and vehicle locations.",
      "howToMake":
          "Design a UI for users to view nearby public transport routes and real-time tracking. Integrate GPS and mapping APIs to track vehicles. Build backend APIs to manage transport data and schedules, using MongoDB for data storage.",
      "types": ["Mobile App"]
    },
    {
      "title": "Package Delivery Management System for Couriers",
      "name": "CourierTrack",
      "technology": {
        "frontend": ["React", "Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "A system for managing package deliveries, tracking shipments, and providing updates for couriers and recipients.",
      "howToMake":
          "Design UIs for couriers and recipients to track deliveries and provide updates. Implement features for managing orders, tracking packages, and notifications. Develop backend APIs to handle order status and delivery tracking, with MongoDB for storage.",
      "types": ["Mobile App", "Website"]
    },
    {
      "title": "Carpooling App for Daily Commuters",
      "name": "CarpoolMate",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "An app that connects daily commuters with carpooling options, helping users save costs and reduce environmental impact.",
      "howToMake":
          "Design a UI for users to find and book carpool rides, offering features like scheduling, payment, and matching riders. Build backend APIs for managing rides, payments, and user data, using MongoDB for storage.",
      "types": ["Mobile App"]
    },
    {
      "title": "Electric Vehicle Charging Station Locator App",
      "name": "EVChargeFinder",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "An app that helps users locate nearby electric vehicle charging stations, showing real-time availability and station details.",
      "howToMake":
          "Design a UI that allows users to search for nearby charging stations and view real-time availability. Integrate GPS and map APIs to show station locations. Build backend APIs to manage station data and availability, using MongoDB for storage.",
      "types": ["Mobile App"]
    },
    {
      "title": "Parking Space Booking Website",
      "name": "ParkSpace",
      "technology": {
        "frontend": ["React"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "A website where users can search, book, and manage parking spaces in urban areas, helping to reduce parking hassles.",
      "howToMake":
          "Design a UI for searching available parking spaces and making reservations. Implement features for payment and booking management. Build backend APIs for handling parking space data, user bookings, and payment transactions, using MongoDB for data storage.",
      "types": ["Website"]
    },
    {
      "title": "Internship Portal with Skills Assessment Tests",
      "name": "InternHub",
      "technology": {
        "frontend": ["React", "Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "A portal where students can apply for internships, take skills assessment tests, and track their progress.",
      "howToMake":
          "Design a UI where users can browse available internships, take skills assessment tests, and track their application progress. Implement features like test score tracking and internship applications. Develop backend APIs to handle user profiles, internship listings, and test results, with MongoDB for storage.",
      "types": ["Website", "Mobile App"]
    },
    {
      "title": "Online Interview Scheduling App",
      "name": "InterviewScheduler",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "An app for scheduling interviews, managing availability, and sending reminders for upcoming interviews.",
      "howToMake":
          "Design a UI that allows users to set their availability and schedule interviews. Implement notification features for interview reminders. Build backend APIs to manage user data, interview schedules, and notifications, using MongoDB for storage.",
      "types": ["Mobile App"]
    },
    {
      "title": "Freelance Project Management App",
      "name": "FreelanceFlow",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "An app that helps freelancers manage projects, track deadlines, and communicate with clients.",
      "howToMake":
          "Design a UI that allows freelancers to track their projects, deadlines, and client communications. Implement features like project timelines, task management, and messaging. Build backend APIs for managing project data, tasks, and client communication, with MongoDB for storage.",
      "types": ["Mobile App"]
    },
    {
      "title": "AI-Powered Job Suggestion Website",
      "name": "JobMateAI",
      "technology": {
        "frontend": ["React"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "A website that suggests job opportunities based on user skills, preferences, and career goals using AI algorithms.",
      "howToMake":
          "Design a UI where users can create profiles, enter skills, and set job preferences. Implement AI algorithms to suggest suitable job listings based on user input. Build backend APIs to manage user data and job listings, with MongoDB for storage.",
      "types": ["Website"]
    },
    {
      "title": "Career Counseling App with Roadmaps",
      "name": "CareerPath",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "An app that provides career counseling, personalized roadmaps, and guidance for career development.",
      "howToMake":
          "Design a UI where users can take career assessments, receive personalized roadmaps, and access resources. Implement features like career path suggestions and progress tracking. Develop backend APIs to manage user profiles, assessments, and roadmap data, with MongoDB for storage.",
      "types": ["Mobile App"]
    },
    {
      "title": "Graphic Design Portfolio Website",
      "name": "DesignPortfolio",
      "technology": {
        "frontend": ["React"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "A portfolio website for graphic designers to showcase their design work, projects, and skills.",
      "howToMake":
          "Design a clean and responsive UI that allows users to upload and display their design projects. Implement features for organizing work by category and adding detailed descriptions. Build backend APIs to manage portfolio data and user profiles, using MongoDB for storage.",
      "types": ["Website"]
    },
    {
      "title": "Photography Contest Hosting Platform",
      "name": "PhotoContestHub",
      "technology": {
        "frontend": ["React"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "A platform where photographers can participate in contests, upload their photos, and vote on entries.",
      "howToMake":
          "Design a UI where photographers can submit their entries for various contests, view ongoing contests, and vote for their favorite submissions. Implement features like voting systems, contest management, and user profiles. Develop backend APIs for managing contests, photos, and votes, with MongoDB for storage.",
      "types": ["Website"]
    },
    {
      "title": "Video Editing App for Mobile Devices",
      "name": "VideoMaster",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "A mobile app for editing videos, adding effects, transitions, and exporting final videos.",
      "howToMake":
          "Design a UI that allows users to upload, trim, and edit videos with effects and transitions. Implement video processing features and export options. Build backend APIs for managing video files and editing history, with MongoDB for storing user data and edits.",
      "types": ["Mobile App"]
    },
    {
      "title": "Meme Creation App with Preloaded Templates",
      "name": "MemeCreator",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "An app that allows users to create memes using preloaded templates, images, and text options.",
      "howToMake":
          "Design a UI with a library of meme templates and customization options for users to add text and images. Implement meme generation features and sharing options. Build backend APIs to store created memes and templates, using MongoDB for storage.",
      "types": ["Mobile App"]
    },
    {
      "title": "Digital Art Learning Platform",
      "name": "ArtLearn",
      "technology": {
        "frontend": ["React"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "A platform for learning digital art techniques, with tutorials, resources, and community features.",
      "howToMake":
          "Design a UI that provides digital art tutorials, resources, and a community for artists to share their work. Implement features like progress tracking, comment sections, and user galleries. Develop backend APIs to manage tutorials, user profiles, and community posts, using MongoDB for storage.",
      "types": ["Website"]
    },
    {
      "title": "Fantasy Sports App for Cricket/Football Fans",
      "name": "FantasySportz",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "A fantasy sports app where users can create teams, join leagues, and compete based on real-world cricket or football match performances.",
      "howToMake":
          "Design a UI for users to draft teams, join leagues, and track points. Implement match data integration for player performance updates. Build backend APIs for team creation, league management, and scoring, using MongoDB for data storage.",
      "types": ["Mobile App"]
    },
    {
      "title": "Sports Event Ticket Booking Website",
      "name": "EventTicketHub",
      "technology": {
        "frontend": ["React"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "A website that allows users to browse, book, and purchase tickets for sports events, concerts, and other live events.",
      "howToMake":
          "Design a UI for users to explore upcoming events, view tickets, and make purchases. Implement payment gateway integration for transactions. Build backend APIs for event management, ticket bookings, and user data, using MongoDB for storage.",
      "types": ["Website"]
    },
    {
      "title": "Personal Workout Trainer App",
      "name": "FitTrainer",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "A personal workout trainer app that offers custom workout plans, exercise tutorials, and tracking for fitness progress.",
      "howToMake":
          "Design a UI for users to set goals, track workouts, and view exercise tutorials. Implement features for workout plans, progress tracking, and fitness data storage. Develop backend APIs for workout plans, progress tracking, and user data management, using MongoDB for storage.",
      "types": ["Mobile App"]
    },
    {
      "title": "Match Score Prediction Website",
      "name": "ScorePredict",
      "technology": {
        "frontend": ["React"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "A website where users can predict scores for upcoming sports matches and track the accuracy of their predictions.",
      "howToMake":
          "Design a UI for users to submit predictions for matches and view historical prediction accuracy. Implement features for real-time match data and score tracking. Build backend APIs for match data, prediction submissions, and result calculation, using MongoDB for storage.",
      "types": ["Website"]
    },
    {
      "title": "Community Sports Team Management App",
      "name": "TeamPlay",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "An app for managing community sports teams, including scheduling, player availability, and team communication.",
      "howToMake":
          "Design a UI for team management, player scheduling, and event communication. Implement features like availability tracking, push notifications, and chat groups. Build backend APIs for team data, scheduling, and messaging, with MongoDB for storage.",
      "types": ["Mobile App"]
    },
    {
      "title": "Blood Donation Camp Finder App",
      "name": "BloodCampFinder",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "An app that helps users locate nearby blood donation camps, view schedules, and register for donations.",
      "howToMake":
          "Design a UI for users to search for nearby blood donation camps based on location and schedule. Implement features like registration for donation slots and camp details. Build backend APIs to manage camp data and user registrations, using MongoDB for storage.",
      "types": ["Mobile App"]
    },
    {
      "title": "Volunteering Opportunities Finder Website",
      "name": "VolunteerFinder",
      "technology": {
        "frontend": ["React"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "A website where users can find volunteering opportunities, filter by cause, location, and availability.",
      "howToMake":
          "Design a UI that lists available volunteering opportunities, with filters for cause and location. Implement features for users to register for events and submit volunteer profiles. Build backend APIs to manage opportunities and volunteer registrations, using MongoDB for storage.",
      "types": ["Website"]
    },
    {
      "title": "Pet Adoption and Care App",
      "name": "AdoptPets",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "An app for users to adopt pets, view pet profiles, and access pet care information and tips.",
      "howToMake":
          "Design a UI for users to browse available pets for adoption, view pet profiles, and access care guides. Implement features for pet adoption registration and appointment scheduling. Develop backend APIs for managing pet profiles, adoption requests, and pet care resources, with MongoDB for storage.",
      "types": ["Mobile App"]
    },
    {
      "title": "Neighborhood Crime Alert App",
      "name": "CrimeAlert",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "An app that provides real-time crime alerts based on user location, helping them stay informed about local safety issues.",
      "howToMake":
          "Design a UI that displays crime alerts based on the user's location. Integrate real-time push notifications and user-reporting features. Build backend APIs to manage crime data and user submissions, using MongoDB for storage.",
      "types": ["Mobile App"]
    },
    {
      "title": "Online Platform for Charity Auctions",
      "name": "CharityBid",
      "technology": {
        "frontend": ["React"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "A platform where users can participate in charity auctions, bid on items, and support causes.",
      "howToMake":
          "Design a UI that allows users to browse auction items, place bids, and track auction progress. Implement payment gateway integration for winning bids. Build backend APIs for auction management, bid tracking, and payment processing, using MongoDB for storage.",
      "types": ["Website"]
    },
    {
      "title": "QR Code Generator App with History Log",
      "name": "QRLog",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "An app that allows users to generate QR codes, with a history log of previously created codes for easy reference.",
      "howToMake":
          "Design a UI for generating QR codes, viewing the history of previously created codes, and managing them. Implement QR code generation functionality and a history feature for quick access. Build backend APIs to store user-generated QR codes and their history, using MongoDB for storage.",
      "types": ["Mobile App"]
    },
    {
      "title": "Voice-Controlled Smart Device Dashboard",
      "name": "SmartVoiceControl",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "An app that controls smart devices through voice commands, integrating with home automation systems.",
      "howToMake":
          "Design a UI for managing connected smart devices, with voice recognition functionality for controlling devices. Integrate voice recognition APIs and manage device states through backend APIs, using MongoDB for storing device data and preferences.",
      "types": ["Mobile App"]
    },
    {
      "title": "IoT-Based Smart Home Automation App",
      "name": "HomeAutomate",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "An IoT-based smart home automation app that allows users to control home appliances remotely from their smartphones.",
      "howToMake":
          "Design a UI for users to control smart home devices like lights, temperature, and security cameras. Implement features to sync with IoT devices and control them remotely. Develop backend APIs for managing devices and user preferences, with MongoDB for storing data.",
      "types": ["Mobile App"]
    },
    {
      "title": "App for Augmented Reality Furniture Placement",
      "name": "FurniAR",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "An augmented reality app that allows users to visualize how furniture would look in their home before making a purchase.",
      "howToMake":
          "Design a UI that allows users to view furniture in a virtual environment using augmented reality. Integrate AR SDKs to place virtual furniture in real-world spaces using the phone’s camera. Build backend APIs for managing furniture data and user preferences, with MongoDB for storage.",
      "types": ["Mobile App"]
    },
    {
      "title": "Remote Desktop Control Mobile App",
      "name": "RemoteDesk",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "A mobile app that enables users to control their desktops remotely, providing access to files, applications, and settings.",
      "howToMake":
          "Design a UI for users to access their desktop remotely, including file management and application control. Implement remote desktop protocols (like RDP or VNC) for device communication. Build backend APIs to manage connections and user settings, with MongoDB for storing session and user data.",
      "types": ["Mobile App"]
    },
    {
      "title": "Habit Tracker App with Rewards System",
      "name": "HabitBoost",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "An app that helps users track their habits, set goals, and earn rewards for consistency.",
      "howToMake":
          "Design a UI where users can create, track, and manage habits. Implement a rewards system to encourage users to stay consistent with their habits. Build backend APIs to track progress, handle rewards, and store user data in MongoDB.",
      "types": ["Mobile App"]
    },
    {
      "title": "Daily Journal Website with Cloud Backup",
      "name": "JournalCloud",
      "technology": {
        "frontend": ["React"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "A website for users to write and manage daily journal entries, with cloud backup functionality.",
      "howToMake":
          "Design a clean, minimalist UI for writing and viewing daily journal entries. Implement cloud backup functionality to securely store entries. Build backend APIs to handle data storage and retrieval, using MongoDB for storing journal entries.",
      "types": ["Website"]
    },
    {
      "title": "Public Speaking Practice App with AI Feedback",
      "name": "SpeakMate",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "An app that allows users to practice public speaking, providing AI feedback on voice, tone, and pacing.",
      "howToMake":
          "Design a UI where users can record their speeches and receive AI-driven feedback on their performance. Implement speech-to-text and voice analysis features. Develop backend APIs to manage user data, track progress, and provide feedback, with MongoDB for storing data.",
      "types": ["Mobile App"]
    },
    {
      "title": "Personal Growth Challenge App",
      "name": "GrowthChallenge",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "An app that offers users daily personal growth challenges, with tracking and motivational features.",
      "howToMake":
          "Design a UI with a daily challenge system where users can track their progress and earn achievements. Implement progress tracking, reminders, and motivational quotes. Build backend APIs to manage challenges, user progress, and notifications, using MongoDB for storage.",
      "types": ["Mobile App"]
    },
    {
      "title": "Vision Board Creator Website",
      "name": "VisionBoarder",
      "technology": {
        "frontend": ["React"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "A website that allows users to create digital vision boards, set goals, and visualize their future.",
      "howToMake":
          "Design a UI where users can add images, quotes, and goals to a digital vision board. Implement features for organizing, customizing, and saving vision boards. Build backend APIs to store user-created boards, using MongoDB for data storage.",
      "types": ["Website"]
    },
    {
      "title": "Multiplayer Chess App",
      "name": "ChessMaster",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "A multiplayer chess app where users can play chess against friends or random opponents online.",
      "howToMake":
          "Design a chessboard UI with drag-and-drop functionality for moving pieces. Implement multiplayer features using sockets for real-time gameplay. Build backend APIs to handle matchmaking, store game states, and track user stats, using MongoDB for storage.",
      "types": ["Mobile App"]
    },
    {
      "title": "2D Platformer Game with Customizable Characters",
      "name": "PlatformHero",
      "technology": {
        "frontend": ["Unity", "C#"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "A 2D platformer game where players can control customizable characters to complete levels.",
      "howToMake":
          "Create a 2D game environment using Unity. Design customizable characters with skin, outfits, and accessories. Implement level designs, challenges, and a scoring system. Build backend APIs to store player progress, using MongoDB for data storage.",
      "types": ["Mobile App"]
    },
    {
      "title": "Trivia App for Bollywood Fans",
      "name": "BollywoodTrivia",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "A trivia app for Bollywood fans with multiple levels, questions, and movie-based quizzes.",
      "howToMake":
          "Design a trivia interface with questions, answers, and scoring system. Implement multiple quiz categories and levels based on Bollywood movies, actors, and songs. Build backend APIs to serve questions, track scores, and store user data, using MongoDB.",
      "types": ["Mobile App"]
    },
    {
      "title": "Multiplayer Ludo Game with Online Chat",
      "name": "LudoChat",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "A multiplayer Ludo game where users can play online with friends and chat during the game.",
      "howToMake":
          "Design the Ludo board and implement game logic for multiplayer support. Use sockets for real-time communication and gameplay. Add online chat functionality. Build backend APIs to manage game sessions, track progress, and store user data, using MongoDB.",
      "types": ["Mobile App"]
    },
    {
      "title": "AR-based Shooting Game",
      "name": "ARBlaster",
      "technology": {
        "frontend": ["Unity", "C#"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "An augmented reality-based shooting game where players can aim and shoot at virtual targets in real-world environments.",
      "howToMake":
          "Develop the AR environment using Unity and ARKit/ARCore for the shooting gameplay. Implement real-time targeting and shooting mechanics. Build backend APIs to store player scores, progress, and session data, using MongoDB for data storage.",
      "types": ["Mobile App"]
    },
    {
      "title": "Pet Care and Training Tips App",
      "name": "PetMaster",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "An app that provides pet care and training tips for various pets, including dogs, cats, and birds.",
      "howToMake":
          "Design a user-friendly interface to browse pet care tips, training methods, and health advice. Implement personalized recommendations based on pet types. Build backend APIs to manage content, user data, and recommendations, using MongoDB.",
      "types": ["Mobile App"]
    },
    {
      "title": "Wedding Planner and Budgeting Website",
      "name": "WeddingPlans",
      "technology": {
        "frontend": ["React"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "A website that helps couples plan and manage their weddings, including budgeting, vendor selection, and guest lists.",
      "howToMake":
          "Design a website interface with sections for budget tracking, vendor management, and guest list organization. Implement tools for managing and sharing wedding planning details. Build backend APIs to store user data, plans, and vendor info, using MongoDB.",
      "types": ["Website"]
    },
    {
      "title": "Multi-language Translator App",
      "name": "TransLingo",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "A multi-language translator app that supports text and speech translation between various languages.",
      "howToMake":
          "Design a simple and intuitive UI for entering text or speech to translate. Integrate a translation API for processing languages. Build backend APIs to manage user preferences and translation history, using MongoDB for storing data.",
      "types": ["Mobile App"]
    },
    {
      "title": "Personalized Horoscope and Astrology App",
      "name": "AstroGuide",
      "technology": {
        "frontend": ["Flutter"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "An astrology app that provides personalized horoscopes, birth chart analysis, and daily predictions.",
      "howToMake":
          "Design a UI to input user birth details for generating personalized horoscopes and astrology charts. Integrate astrology data services for real-time updates. Build backend APIs to store user data and horoscope history, using MongoDB.",
      "types": ["Mobile App"]
    },
    {
      "title": "Online Voting System for College Elections",
      "name": "VoteCollege",
      "technology": {
        "frontend": ["React"],
        "backend": ["Node.js"],
        "database": ["MongoDB"]
      },
      "description":
          "A secure online voting system for college elections, where students can vote for candidates through the web app.",
      "howToMake":
          "Design a secure and simple voting interface with user authentication. Implement features for viewing candidates, casting votes, and viewing election results. Build backend APIs to handle vote collection, user authentication, and data storage, using MongoDB.",
      "types": ["Website"]
    },
  ];
}
