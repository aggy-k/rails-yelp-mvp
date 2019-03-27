puts "Cleaning up the restaurant db.."
Restaurant.destroy_all if Rails.env.development?

20.times do
  Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.street_address, category: %w(chinese italian japanese french belgian).sample, phone_number: Faker::PhoneNumber.cell_phone, image: "https://picsum.photos/600/400/?random")
end

puts "Created #{Restaurant.count} new restaurant(s)"
