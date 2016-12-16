# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

["users", "offers", "comments", "offers_users"].each do |table_name|
  ActiveRecord::Base.connection.execute("Truncate #{table_name} RESTART IDENTITY CASCADE")
end

mike = User.create!({
  username: "mickyginger",
  email: "mike.hayden@ga.co",
  password: "password",
  password_confirmation: "password",
  image: "https://avatars2.githubusercontent.com/u/3531085?v=3&s=400"
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
  image: "https://avatars1.githubusercontent.com/u/12409938?v=3&u=0c84978e720ef2326085c36dd05bf66f4efb6778&s=400"
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
  password_confirmation: "password",
  image: "http://orig15.deviantart.net/309f/f/2015/263/4/8/profile_picture_by_cartoon_hyoyeon-d9adcdc.png"
})

ervis = User.create!({
  username: "ervis",
  email: "ervis@gmail.com",
  password: "password",
  password_confirmation: "password",
  image: "http://www.boon-dah.com/wp-content/uploads/2015/10/Jack-profile-cartoon.jpg"
})

will = User.create!({
  username: "will",
  email: "will@gmail.com",
  password: "password",
  password_confirmation: "password",
  image: "https://lh3.googleusercontent.com/-wqdY2uarIzA/AAAAAAAAAAI/AAAAAAAAAAA/eBF7Tl8gMuk/photo.jpg"
})

offer1 = Offer.create!({
  title: "Mike's Pork Pies",
  user_id: mike.id,
  menu: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  date: "2016-02-12",
  image: "https://realfood.tesco.com/media/images/PorkPie-LGH-b83fa731-6659-4962-aba8-d9d5a8addcb7-0-1400x919.jpg",
  price: 25,
  cuisine: "Typical Midlands",
  max_seats: 5,
  city: "Rome",
  address: "w41ag, 49 Southfield road"
})

offer2 = Offer.create!({
  title: "French dinner",
  user_id: oli.id,
  menu: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
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
  user_id: eduardo.id,
  menu: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  date: "2016-12-12",
  image: "http://static.wixstatic.com/media/369d81_83a0af273bf146da8e5e5c64035ada37.jpg_srz_920_690_85_22_0.50_1.20_0.00_jpg_srz",
  price: 25,
  cuisine: "Persian",
  max_seats: 6,
  city: "London",
  address: "Holland road"
})

offer7 = Offer.create!({
  title: "Indian dinner",
  user_id: marco.id,
  menu: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  date: "2016-12-19",
  image: "http://www.colorado.edu/csilw/alp/photos/family-dinner-table-with-food-76csm71t.jpg",
  price: 25,
  cuisine: "Indian",
  max_seats: 6,
  city: "London",
  address: "Holland road"
})

offer4 = Offer.create!({
  title: "Spanish dinner",
  user_id: will.id,
  menu: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
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
  menu: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
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
  user_id: ervis.id,
  menu: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  date: "2017-03-10",
  image: "http://cdn.c.photoshelter.com/img-get2/I0000rEJT54lonhY/fit=1000x750/Polish-Family-10-dinner-table.jpg",
  price: 38,
  cuisine: "Greek",
  max_seats: 6,
  city: "Athens",
  address: "Finchely rd"
})

offer8 = Offer.create!({
  title: "Turkish dinner",
  user_id: william.id,
  menu: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  date: "2017-03-10",
  image: "https://mangomissives.files.wordpress.com/2008/09/turk9.jpg",
  price: 38,
  cuisine: "Turkish",
  max_seats: 6,
  city: "Istanbul",
  address: "Finchely rd"
})

offer9 = Offer.create!({
  title: "Thai dinner",
  user_id: marco.id,
  menu: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  date: "2017-03-10",
  image: "http://www.orientalescape.com/img/thailand/attraction/bkk-silomvillage8.jpg",
  price: 38,
  cuisine: "Thai",
  max_seats: 6,
  city: "Bangkok",
  address: "Finchely rd"
})

comment1 = Comment.create!({
  body: "comment test",
  user_id: marco.id,
  offer_id: offer1.id
  })

emily.offers_attending << offer1
# mike.offers_attending << offer1
