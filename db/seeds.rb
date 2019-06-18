require 'faker'

puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating flats...'
10.times do
  flat = [name: Faker::Music::RockBand.name,
          address: Faker::Address.street_address,
          description: Faker::Music.genre,
          price_per_night: rand(1..100),
          number_of_guests: rand(1..7)]
  Flat.create!(flat)
end
puts 'Finished!'
