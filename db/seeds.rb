# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# puts "Cleaning database..."
# Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "belgian"}
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian"}
oodles_of_noodles = { name: "oodles of noodles", address: "Chinatown", category: "chinese"}
le_frog = { name: "le frog", address: "France road", phone_number: "84746628493", category: "french"}
sushi_shop = { name: "sushi shop", address: "Riverbed j690tj", phone_number: "007576387368", category: "japanese"}

[dishoom, pizza_east, oodles_of_noodles, le_frog, sushi_shop].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
  Review.create(rating: 3, content: 'this was sh*t', restaurant: restaurant )
end
puts "Finished!"
