# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

author = Author.create!({
  first_name:  Faker::Ancient.god,
  last_name:  Faker::Name.last_name,
  email:  Faker::Internet.email,
  phone:  Faker::PhoneNumber.phone_number
})

3.times do |i|
  author.brag_entries.create!({
    title: "#{Faker::Hacker.adjective}" "#{Faker::Hacker.noun}",
    description: Faker::Hacker.say_something_smart
  })
end