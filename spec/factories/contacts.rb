FactoryBot.define do
  factory :contact do
    first_name { Faker::Ancient.god }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.email }
    phone { Faker::PhoneNumber.phone_number }
  end
end
