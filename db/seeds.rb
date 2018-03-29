# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Flat.destroy_all

4.times do
  Flat.create!(name: Faker::LordOfTheRings.location,
    address: Faker::Address.street_address,
    description: Faker::Company.catch_phrase,
    price_per_night: rand(300),
    number_of_guest: rand(4))
end
