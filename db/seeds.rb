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
p author.attributes

3.times do |i|
  
  be = author.brag_entries.create!({
    title: "#{Faker::Hacker.adjective}" "#{Faker::Hacker.noun}",
    description: Faker::Hacker.say_something_smart
  })
  p be.attributes
end

Friend.new(
  name: "josh thompson",
  address: "621 Iowa St",
  lat_long_of_meeting_places: [
                              "111.111,222.222",
                              "222.222,333.333",
                              "333.333,444.444",
                            ],
  strava_run_of_meeting: "https://strava.com/blahblahblah",
  
)

# don't lose this, met Sam a few days ago, don't wanna lose the details
Friend.new(
  name: "Sam Edgley",
  address: "508 5TH ST Golden CO",
  home_lat_long: ["39.76304008954389", "-105.22498387782794"],
  where_we_met: "Goosetown parking lot",
  met_lat_long: ["39.75972106061283", "-105.22162800017028"],
  strava_route_when_we_met: "https://strava.com/activities/12345",
)

# a relationship belongs to: me? Lets do it. 

Me.new(
  name: "josh thompson",
  address: Address.new("621 Iowa St, Golden, CO"),
)


  


