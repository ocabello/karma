# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User1 = User.create(name: 'Sarah Burkenstock', email: 'sarah@email.com', points: '100')
Post.create(title: 'French', description: 'Looking for someone I can practice conversation with', user_id: User1.id)
Post.create(title: 'Spanish', description: 'I also need help in Spanish', user_id: User1.id)

User2 = User.create(name: 'Jessica Ellis', email: 'jessica@email.com', points: '100')
Post.create(title: 'Bike Problems', description: 'Can someone fix my bike?', user_id: User2.id)
Post.create(title: 'Paper', description: 'Can someone go over my paper?', user_id: User2.id)

User3 = User.create(name: 'Tom Sawyer', email: 'tom@email.com', points: '100')
Post.create(title: 'Laptop stopped working', description: 'I need someone to look at my laptop', user_id: User3.id)
Post.create(title: 'Spanish', description: 'I also need help in Spanish', user_id: User3.id)

User4 = User.create(name: 'John Doe', email: 'john@email.com', points: '100')
Post.create(title: 'Calc III', description: 'Need calc III help', user_id: User4.id)
Post.create(title: 'House Painting', description: 'Can someone help me paint my house this weekend?', user_id: User4.id)

User5 = User.create(name: 'Alan Oligarchy', email: 'alan@email.com', points: '100')
Post.create(title: 'Russian', description: 'Looking for someone I can practice conversation with', user_id: User5.id)
Post.create(title: 'Art History', description: 'Need tutoring for Art History. Our final is coming up!', user_id: User5.id)

User6 = User.create(name: 'Warren Dean', email: 'deandean@email.com', points: '100')
Post.create(title: 'Russian', description: 'Looking for someone I can practice conversation with', user_id: User6.id)
Post.create(title: 'Art or Music Lessons', description: 'I want to get creative. I am okay to take any lessons in any kinds of art or music', user_id: User6.id)

User7 = User.create(name: 'Carl Warth', email: 'starman@email.com', points: '100')
Post.create(title: 'Piano Lessons', description: 'Looking for someone I can practice piano with', user_id: User7.id)
Post.create(title: 'Portuguese', description: 'Need someone fluent or near fluent in Portugues to practice conversation with', user_id: User7.id)
