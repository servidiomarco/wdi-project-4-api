# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

["users","offers"].each do |table_name|
  ActiveRecord::Base.connection.execute("Truncate #{table_name} RESTART IDENTITY CASCADE")
end

mike = User.create!({
  username: "mickyginger",
  email: "mike.hayden@ga.co",
  password: "password",
  password_confirmation: "password"
})

marco = User.create!({
  username: "Marco",
  email: "marco@gmail.com",
  password: "password",
  password_confirmation: "password",
  image: "https://media.licdn.com/mpr/mpr/shrinknp_200_200/p/1/005/08f/021/10f0840.jpg"
})

eduardo = User.create!({
  username: "Eduardo",
  email: "edu@gmail.com",
  password: "password",
  password_confirmation: "password",
  image: "https://d1qb2nb5cznatu.cloudfront.net/users/1159644-large?1429311625"
})

oli = User.create!({
  username: "Oli",
  email: "oli@gmail.com",
  password: "password",
  password_confirmation: "password",
  image: "http://img.tatler.co.uk.s3.amazonaws.com/600x400/o_r/Oli-Moore-Laura-Dean-and-Dougie-Foster-tatler-8dec14-pr_b_600x400.jpg"
})

william = User.create!({
  username: "William",
  email: "william@gmail.com",
  password: "password",
  password_confirmation: "password",
  image: "https://upload.wikimedia.org/wikipedia/commons/e/ef/Williamhovell.jpg"
})

emily = User.create!({
  username: "emilyi",
  email: "emily.isacke@ga.co",
  password: "password",
  password_confirmation: "password"
})

offer1 = Offer.create!({
  title: "Italian dinner",
  user_id: mike.id,
  menu: "sample text",
  date: "2016-02-12",
  image: "http://ell.h-cdn.co/assets/15/44/980x490/landscape-1446233341-elle-italian-dinner-party.png",
  price: 25,
  cuisine: "Italian",
  max_seats: 5,
  city: "Rome",
  address: "49 Southfield road"
})

offer2 = Offer.create!({
  title: "French dinner",
  user_id: marco.id,
  menu: "sample text",
  date: "2016-01-12",
  image: "https://img.grouponcdn.com/deal/2Y7DsQXtf8YQMUWDiBghKy3f5RUh/2Y-700x420/v1/c700x420.jpg",
  price: 25,
  cuisine: "French",
  max_seats: 6,
  city: "Paris",
  address: "Finsbury park"
})

offer3 = Offer.create!({
  title: "Persian dinner",
  user_id: marco.id,
  menu: "sample text",
  date: "2016-12-12",
  image: "http://static.wixstatic.com/media/369d81_83a0af273bf146da8e5e5c64035ada37.jpg_srz_920_690_85_22_0.50_1.20_0.00_jpg_srz",
  price: 25,
  cuisine: "Persian",
  max_seats: 6,
  city: "London",
  address: "Holland road"
})

offer7 = Offer.create!({
  title: "Another Persian dinner",
  user_id: marco.id,
  menu: "sample text",
  date: "2016-12-12",
  image: "http://static.wixstatic.com/media/369d81_83a0af273bf146da8e5e5c64035ada37.jpg_srz_920_690_85_22_0.50_1.20_0.00_jpg_srz",
  price: 25,
  cuisine: "Persian",
  max_seats: 6,
  city: "London",
  address: "Holland road"
})

offer4 = Offer.create!({
  title: "Spanish dinner",
  user_id: marco.id,
  menu: "sample text",
  date: "2017-12-01",
  image: "https://www.eyeonspain.com/spain-magazine/newimages/dinnerparty.jpg",
  price: 30,
  cuisine: "Spanish",
  max_seats: 6,
  city: "Barcelona",
  address: "Hyde park"
})

offer5 = Offer.create!({
  title: "Mexican dinner",
  user_id: marco.id,
  menu: "sample text",
  date: "2017-1-02",
  image: "https://i.ytimg.com/vi/mzq6XvfUE88/maxresdefault.jpg",
  price: 38,
  cuisine: "Mexican",
  max_seats: 6,
  city: "Tulum",
  address: "Piccadilly Circus"
})

offer6 = Offer.create!({
  title: "Greek dinner",
  user_id: marco.id,
  menu: "sample text",
  date: "2017-03-10",
  image: "http://cdn.c.photoshelter.com/img-get2/I0000rEJT54lonhY/fit=1000x750/Polish-Family-10-dinner-table.jpg",
  price: 38,
  cuisine: "Greek",
  max_seats: 6,
  city: "Athens",
  address: "Finchely rd"
})

emily.offers_attending << offer1
# mike.offers_attending << offer1
