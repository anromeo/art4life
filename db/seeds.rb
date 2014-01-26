# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: "hey_donor@gmail.com", password: "password")
User.create(email: "hey_artist@gmail.com", password: "password")

Post.create(title: "Spare glass!", description: "Got some spare glass if you need it", address: "207 Boren Ave N", donor_id: 1, keyword: 1)
Post.create(title: "Wooden table", description: "Old wooden table available!", address: "207 Boren Ave N", donor_id: 1, keyword: 2)
Post.create(title: "Do you need some steel?", description: "Bought a couple of steel plates that I haven't used for a while", address: "207 Boren Ave N", donor_id: 1, artist_id: 2, keyword: 3)

