# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User1 = User.create(name: 'Sarah', email: 'sarah@email.com', points: '30')
Post.create(title: 'French', description: 'Looking for someone I can practice conversation with', user_id: User1.id)
Post.create(title: 'Spanish', description: 'I also need help in Spanish', user_id: User1.id)

User2 = User.create(name: 'Jessica', email: 'jessica@email.com', points: '100')
Post.create(title: 'Bike Problems', description: 'Can someone fix my bike?', user_id: User2.id)
Post.create(title: 'Paper', description: 'Can someone go over my paper?', user_id: User2.id)

User3 = User.create(name: 'Tom', email: 'tom@email.com', points: '55')
Post.create(title: 'Laptop stopped working', description: 'I need someone to look at my laptop', user_id: User3.id)
Post.create(title: 'Spanish', description: 'I also need help in Spanish', user_id: User3.id)

User4 = User.create(name: 'John', email: 'john@email.com', points: '70')
Post.create(title: 'Calc III', description: 'Need calc III help', user_id: User4.id)
Post.create(title: 'House Painting', description: 'Can someone help me paint my house this weekend?', user_id: User4.id)

User5 = User.create(name: 'Alan', email: 'alan@email.com', points: '88')
Post.create(title: 'Russian', description: 'Looking for someone I can practice conversation with', user_id: User5.id)
Post.create(title: 'Art History', description: 'Need tutoring for Art History. Our final is coming up!', user_id: User5.id)