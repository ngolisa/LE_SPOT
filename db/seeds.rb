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


spot1 = Spot.new(city:'Paris, Île-de-France, France', user: arthur, address: "85 boulevard Flandrin", description: "Perfect Clay Court At the corner of Les Buttes Chaumont ⭐️⭐️⭐️", price: 200)
url = "https://images.unsplash.com/photo-1489824740691-7a25f94fc85a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2689&q=80"
spot1.remote_photo_url = url
spot1.save


spot2 = Spot.new(city:'Cité de Londres, England, Royaume-Uni', user: arthur, address: "32 shoreditch high street", description: "Brilliant spot In London Baby ⭐️⭐️⭐️⭐️", price: 200)
url = "https://images.unsplash.com/photo-1495246592305-b1ba8ca2dd88?ixlib=rb-1.2.1&auto=format&fit=crop&w=1902&q=80"
spot2.remote_photo_url = url
spot2.save

spot3 = Spot.new(city:"New York, États-Unis d'Amérique", user: arthur, address: "Fifth avenue 230 new york", description: "Play like a NewYorker ⭐️⭐️⭐️", price: 250)
url = "https://images.unsplash.com/photo-1499510318569-1a3d67dc3976?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
spot3.remote_photo_url = url
spot3.save

spot4 = Spot.new(city:'Tokyo, 東京都, Japon', user: arthur, address: "115-1113, Tokyo", description: "Tennis Session in Tokyo HyperCenter ⭐️⭐️⭐️⭐️⭐️", price: 170)
url = "https://images.unsplash.com/photo-1497901646207-7fb0902f8136?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1649&q=80"
spot4.remote_photo_url = url
spot4.save

spot5 = Spot.new(city:'São Paulo, Brésil', user: arthur, address: "Alameda Santos, 1437", description: "São Paulo Tennis Tour - Centro ⭐️⭐️", price: 200)
url = "https://images.unsplash.com/photo-1564525063120-1f209f91d3ca?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
spot5.remote_photo_url = url
spot5.save

spot6 = Spot.new(city:'Shanghai, 上海市, Chine', user: lisa, address: "12 Chenguang St", description: "Shanghai Beautiful Tennis Session ⭐️", price: 180)
url = "https://images.unsplash.com/photo-1465322625814-2c183694898c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2691&q=80"
spot6.remote_photo_url = url
spot6.save!

spot7 = Spot.new(city:'Singapour, Central Singapore, Singapour', user: lisa, address: "3 Seng Poh Rd, Singapore", description: "Singapore amazing tennis night session ⭐️⭐️⭐️", price: 280)
url = "https://images.unsplash.com/photo-1499939256288-c8c99d68354c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
spot7.remote_photo_url = url
spot7.save!

spot8 = Spot.new(city:'Paris, Île-de-France, France', user: arthur, address: "3 rue du Cherche Midi", description: "Life a Tennis Dream In Le Marais ⭐️⭐️", price: 200)
url = "https://images.unsplash.com/photo-1520557710243-b8ee784288ca?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1641&q=80"
spot8.remote_photo_url = url
spot8.save

spot9 = Spot.new(city:'Paris, Île-de-France, France', user: mickey, address: "17 rue Oberkampf", description: "Experienced the Tennis Dream in Belleville ⭐️⭐️⭐️", price: 200)
url = "https://images.unsplash.com/photo-1514792450092-a09aa7501704?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80"
spot9.remote_photo_url = url
spot9.save

spot10 = Spot.new(city:'Paris, Île-de-France, France', user: arthur, address: "4 avenue Bosquet", description: "Stunning Tennis Court In Saint Germain ⭐️⭐️", price: 200)
url = "https://images.unsplash.com/photo-1564769353575-73f33a36d84f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80"
spot10.remote_photo_url = url
spot10.save

spot11 = Spot.new(city:'Paris, Île-de-France, France', user: arthur, address: "40 rue du Colisée", description: "Beautiful Grass Court Near Roland Garros ⭐️⭐️⭐️⭐️⭐️", price: 200)
url = "https://images.unsplash.com/photo-1555192881-a2fe90b74343?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1651&q=80"
spot11.remote_photo_url = url
spot11.save

spot12 = Spot.new(city:'Paris, Île-de-France, France', user: arthur, address: "40 rue du Colisée", description: "Romantic TennisIn Paris ⭐️⭐️⭐️⭐️⭐️", price: 200)
url = "https://images.unsplash.com/photo-1517472563767-ae742f8348eb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1604&q=80"
spot12.remote_photo_url = url
spot12.save


reservation1 = Reservation.new(user: lisa, spot: spot1, status:'accepted', date: "Thu, 29 Aug 2019 12:00:00 UTC +00:00")
reservation1.save


reservation2 = Reservation.new(user: lisa, spot: spot2, status:'accepted', date: "Fr, 30 Aug 2019 12:00:00 UTC +00:00")
reservation2.save

# reservation3 = Reservation.new(user: lisa, spot: spot3, date: "Fr, 30 Aug 2019 12:00:00 UTC +00:00")
# reservation3.save

# reservation4 = Reservation.new(user: lisa, spot: spot4, date: "Sat, 31 Aug 2019 12:00:00 UTC +00:00")
# reservation4.save

# reservation5 = Reservation.new(user: lisa, spot: spot5, date: "Sat, 31 Aug 2019 12:00:00 UTC +00:00")
# reservation5.save

# reservation6 = Reservation.new(user: arthur, spot: spot6, date: "Sat, 31 Aug 2019 12:00:00 UTC +00:00")
# reservation6.save

