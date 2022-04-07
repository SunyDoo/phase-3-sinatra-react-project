puts "🌱 Seeding spices..."

puts "Creating movies..."
Movie.create(title: "The Batman", genre: "Superhero", year: 2022)
Movie.create(title: "Knives Out", genre: "Mystery", year: 2019)
Movie.create(title: "Encanto", genre: "Animated", year: 2021)
Movie.create(title: "The Conjuring", genre: "Horror", year: 2013)
Movie.create(title: "Whiplash", genre: "Drama", year: 2014)

puts "Creating users..."
User.create(name: "Sunil Nilavarath", publication: "Variety")
User.create(name: "Richard Brody", publication: "New Yorker")
User.create(name: "Alissa Wilkinson", publication: "Vox")
User.create(name: "Robert Daniels", publicatin: "Los Angeles Times")

puts "Creating reviews..."
Review.create(score: 91, comment: "Perfectly dark and gritty", movie_id: 1, user_id: 1)
Review.create(score: 88, comment: "Full of compelling twists", movie_id: 1, user_id: 2)
Review.create(score: 82, comment: "Well-crafted franchise", movie_id: 1, user_id: 3)
Review.create(score: 99, comment: "The rebirth we deserve", movie_id: 1, user_id: 4)
Review.create(score: 96, comment: "Delightfully amusing", movie_id: 2, user_id: 1)
Review.create(score: 91, comment: "Fantastic twist ending", movie_id: 2, user_id: 2)
Review.create(score: 88, comment: "A terrific and authentic whodunnit", movie_id: 2, user_id: 3)
Review.create(score: 100, comment: "It's pleasurable and occasionally silly", movie_id: 2, user_id: 4)
Review.create(score: 90, comment: "Very empowering", movie_id: 3, user_id: 1)
Review.create(score: 92, comment: "Catchy songs", movie_id: 3, user_id: 2)
Review.create(score: 86, comment: "Terrific voice-acting", movie_id: 3, user_id: 3)
Review.create(score: 95, comment: "Fun for the whole family", movie_id: 3, user_id: 4)
Review.create(score: 94, comment: "Very scary in the best way", movie_id: 4, user_id: 1)
Review.create(score: 85, comment: "Unforgettable story", movie_id: 4, user_id: 2)
Review.create(score: 79, comment: "Remarkably retro yet effective", movie_id: 4, user_id: 3)
Review.create(score: 91, comment: "This decade's definitive horror classic", movie_id: 4, user_id: 4)
Review.create(score: 90, comment: "The film is stifling, stressful and brilliant", movie_id: 5, user_id: 1)
Review.create(score: 83, comment: "It is simply a pleasure to watch", movie_id: 5, user_id: 2)
Review.create(score: 72, comment: "Ultimately there's more bark than bite.", movie_id: 5, user_id: 3)
Review.create(score: 84, comment: "It's a thorny, thoughtful movie that asks provocative questions", movie_id: 5, user_id: 4)

puts "✅ Done seeding!"
