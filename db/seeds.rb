# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'clean database'
Flat.destroy_all

10.times do
Flat.create!(
  name: Faker::Adjective.positive.capitalize + " & " + Faker::Adjective.positive.capitalize + " Room ",
  address: Faker::Address.full_address,
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: rand(3500..15000),
  number_of_guests: rand(1..4)
)
end
