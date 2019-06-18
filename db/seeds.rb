puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating 10 flats...'

10.times do
  flat = Flat.create!(
    name: Faker::Company.name,
    address: Faker::Address.city,
    description: Faker::Lorem.sentence(20),
    price_per_night: (50..250).to_a.sample,
    number_of_guests: (1..5).to_a.sample
  )
end

puts 'Finished!'
