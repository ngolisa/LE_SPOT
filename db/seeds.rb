# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Spot.destroy_all
User.destroy_all

user1 = User.new(email:"arthurmarie1991@gmail.com", username: "arthurmarie1991", password:"azerty")
user1.save!

spot = Spot.new({city:'Paris', user: user1, address: "164 rue de la Pompe", description: "Magnifique terrain de tennis en plein coeur de Paris", price: 200})
spot.save!
