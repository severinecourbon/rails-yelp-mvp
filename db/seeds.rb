# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



require 'faker'

puts 'Creating 5 fake review...'
5.times do
  review = Review.new(
    content: Faker::Food.description,
    rating: rand(0..5),
    restaurant_id: rand(1..5)
  )
  review.save!
end
puts 'Finished!'
