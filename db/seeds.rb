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
url = "https://images.unsplash.com/photo-1489824740691-7a25f94fc85a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2689&q=80"
spot1.remote_photo_url = url
spot1.save


spot2 = Spot.new(city:'London', user: arthur, address: "32 shoreditch high street", description: "Brilliant spot In London Baby", price: 200)
url = "https://images.unsplash.com/photo-1495246592305-b1ba8ca2dd88?ixlib=rb-1.2.1&auto=format&fit=crop&w=1902&q=80"
spot2.remote_photo_url = url
spot2.save

spot3 = Spot.new(city:'NYC', user: arthur, address: "Fifth avenue 230 new york", description: "Play like a NewYorker", price: 250)
url = "https://images.unsplash.com/photo-1499510318569-1a3d67dc3976?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
spot3.remote_photo_url = url
spot3.save

spot4 = Spot.new(city:'Tokyo', user: arthur, address: "115-1113, Tokyo", description: "Tennis Session in Tokyo HyperCenter", price: 170)
url = "https://images.unsplash.com/photo-1497901646207-7fb0902f8136?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1649&q=80"
spot4.remote_photo_url = url
spot4.save

spot5 = Spot.new(city:'Sao Polo', user: arthur, address: "Rua Canuco SaoPaulo", description: "São Paulo Tennis Tour - Centro", price: 200)
url = "https://images.unsplash.com/photo-1564525063120-1f209f91d3ca?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
spot5.remote_photo_url = url
spot5.save

spot6 = Spot.new(city:'Shanghai', user: lisa, address: "12 Chenguang St", description: "Shanghai Beautiful Tennis Session", price: 180)
url = "https://images.unsplash.com/photo-1465322625814-2c183694898c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2691&q=80"
spot6.remote_photo_url = url
spot6.save

spot7 = Spot.new(city:'Singapore', user: lisa, address: "16a, Bali Lane 189852, Singapore", description: "Singapore amazing tennis night session", price: 280)
url = "https://images.unsplash.com/photo-1499939256288-c8c99d68354c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
spot7.remote_photo_url = url
spot7.save


reservation1 = Reservation.new(user: lisa, spot: spot1, date: "Thu, 22 Aug 2019 12:00:00 UTC +00:00")
reservation1.save


reservation2 = Reservation.new(user: lisa, spot: spot2, date: "Thu, 29 Aug 2019 12:00:00 UTC +00:00")
reservation2.save

reservation3 = Reservation.new(user: lisa, spot: spot3, date: "Fr, 30 Aug 2019 12:00:00 UTC +00:00")
reservation3.save

reservation4 = Reservation.new(user: lisa, spot: spot4, date: "Sat, 31 Aug 2019 12:00:00 UTC +00:00")
reservation4.save

reservation5 = Reservation.new(user: lisa, spot: spot5, date: "Sat, 31 Aug 2019 12:00:00 UTC +00:00")
reservation5.save
