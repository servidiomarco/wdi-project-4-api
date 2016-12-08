# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

["users","offers"].each do |table|
  ActiveRecord::Base.connection.execute("Truncate #{table} RESTART IDENTITY CASCADE")
end

mike = User.create(
  username: "mickyginger",
  email: "mike.hayden@ga.co",
  password: "password",
  password_confirmation: "password"
)

emily = User.create(
  username: "emilyi",
  email: "emily.isacke@ga.co",
  password: "password",
  password_confirmation: "password"
)

offer1 = Offer.create(
  title: "Italian Food",
  user_id: mike.id,
  menu: "sample text",
  date: "2016-08-12",
  image: "http://test.com",
  price: 25,
  cuisine: "Italian",
  max_seats: 5,
  address: "49 Southfield road"
)

# emily.offers_attending << offer1
# mike.offers_attending << offer1
