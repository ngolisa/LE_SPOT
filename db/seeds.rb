# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "begin seed"
Reservation.destroy_all
Spot.destroy_all
User.destroy_all

url = "http://fr.web.img6.acsta.net/medias/nmedia/18/78/95/70/19485155.jpg"
arthur = User.new(email:"arthurmarie1991@gmail.com", username: "arthurmarie1991", password:"azerty")
arthur.remote_avatar_url = url
arthur.save

url = "https://www.curionautes.com/wp-content/uploads/2018/11/Mickey-Mouse-234x300.jpg"
mickey = User.new(email:"mickey@gmail.com", username: "mickey", password:"azerty")
mickey.remote_avatar_url = url
mickey.save

url = "https://scontent-bru2-1.xx.fbcdn.net/v/t1.0-1/p320x320/27331927_10214908368204257_8665718952559440379_n.jpg?_nc_cat=106&_nc_oc=AQlBgRfq3Sy3qjh8SKawiz8I3WCu0oNO-KGIpL7CkqjXzxZ6dMbAQHyUpVr7H5aAxX8&_nc_ht=scontent-bru2-1.xx&oh=a84d4a2f516e26ff0610f933f20534fa&oe=5DDFED6B"
lisa = User.new(email:"lisango.e@gmail.com", username: "lisango", password:"azerty")
lisa.remote_avatar_url = url
lisa.save

spot1 = Spot.new(city:'Paris', user: arthur, address: "85 boulevard Flandrin", description: "Magnifique terrain de tennis en plein coeur de Paris", price: 200)
url = "https://www.djuringa-juniors.fr/media/organisateurs/viva/tennis/2019/colonie-de-vacances-tennis-90.jpg"
spot1.remote_photo_url = url
spot1.save

reservation1 = Reservation.new(user: lisa, spot: spot1, date: "Thu, 22 Aug 2019 12:00:00 UTC +00:00")
reservation1.save
reservation2 = Reservation.new(user: lisa, spot: spot1, date: "Fr, 23 Aug 2019 12:00:00 UTC +00:00")
reservation2.save
