# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

Hotel.create!(
    total_rooms: rand(50),
    address: Faker::Address.full_address,
    name: Faker::Restaurant.name
)

puts "Hotel creado"

25.times do
    Room.create(
        length: rand(10),
        width: rand(10),
        taken: rand(2),
        image: Faker::Internet.url,
        hotel_id: Hotel.first.id
    )
end

puts "Habitaciones creadas"
