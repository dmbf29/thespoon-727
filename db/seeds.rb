puts 'Removing the restaurants...'
Restaurant.destroy_all

puts 'Creating Restaurants...'
chefs = ['Mai', 'Ryota', 'Emanuel', 'Michi', 'Louis', 'Etienne', 'Karen', 'Gareth', 'Ryan', 'Carlos', 'Galym', 'Jesse', 'Konstantin', 'Joss', 'Hirofumi', 'Renato', 'David', 'Anju', 'Vivian', 'Caio', 'Matias', 'Michael']
chefs.each do |name|
  Restaurant.create!(
    name: "#{name}'s #{Faker::Restaurant.name}",
    address: Faker::Address.street_address,
    rating: rand(1..5),
    category: Faker::Restaurant.type.split.first
  )
end
puts "...created #{Restaurant.count} restaurants"
