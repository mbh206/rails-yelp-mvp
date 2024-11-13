# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning the DB..."
Restaurant.destroy_all

puts "Seeding the DB..."
Restaurant.create!([{
  name: "The Farm",
  address: "1-3 Meguro",
  phone_number: "090-1234-5678",
  category: Restaurant::CATEGORIES.sample
},
{
  name: "Land",
  address: "5-3 Meguro",
  phone_number: "090-4321-9876",
  category: Restaurant::CATEGORIES.sample
},
{
  name: "Punk Doily",
  address: "5-3 Setagaya",
  phone_number: "090-8765-4567",
  category: Restaurant::CATEGORIES.sample
},
{
  name: "Devil Craft",
  address: "999 Jiyugaoka",
  phone_number: "090-9876-4567",
  category: Restaurant::CATEGORIES.sample
},
{
  name: "Wawich",
  address: "876 Meguro",
  phone_number: "090-3456-9876",
  category: Restaurant::CATEGORIES.sample
}])

puts "... created #{Restaurant.count} restaurants"
