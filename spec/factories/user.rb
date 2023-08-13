FactoryBot.define do
  factory :user do

    name { Faker::Name.unique.name }
    balance { 1000 }
    date_of_birth { DateTime.now - 10.years }
    place_of_birth_of_customer { 'København' }
  end
end