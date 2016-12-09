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
  username: "marco",
  email: "marco@gmail.com",
  password: "password",
  password_confirmation: "password"
})

emily = User.create!({
  username: "emilyi",
  email: "emily.isacke@ga.co",
  password: "password",
  password_confirmation: "password"
})

offer1 = Offer.create!({
  title: "Italian Food",
  user_id: mike.id,
  menu: "sample text",
  date: "2016-08-12",
  image: "http://ell.h-cdn.co/assets/15/44/980x490/landscape-1446233341-elle-italian-dinner-party.png",
  price: 25,
  cuisine: "Italian",
  max_seats: 5,
  address: "49 Southfield road"
})

offer2 = Offer.create!({
  title: "French Food",
  user_id: marco.id,
  menu: "sample text",
  date: "2016-08-12",
  image: "https://img.grouponcdn.com/deal/2Y7DsQXtf8YQMUWDiBghKy3f5RUh/2Y-700x420/v1/c700x420.jpg",
  price: 25,
  cuisine: "French",
  max_seats: 6,
  address: "Finsbury park"
})

offer3 = Offer.create!({
  title: "Persian Food",
  user_id: marco.id,
  menu: "sample text",
  date: "2016-08-12",
  image: "http://static.wixstatic.com/media/369d81_83a0af273bf146da8e5e5c64035ada37.jpg_srz_920_690_85_22_0.50_1.20_0.00_jpg_srz",
  price: 25,
  cuisine: "Persian",
  max_seats: 6,
  address: "Holland road"
})
emily.offers_attending << offer1
# mike.offers_attending << offer1
