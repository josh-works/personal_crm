FactoryBot.define do
  factory :brag_entry do
    title { "#{Faker::Hacker.adjective}" "#{Faker::Hacker.noun}" }
    description { Faker::Hacker.say_something_smart }
    association :author
  end
end
