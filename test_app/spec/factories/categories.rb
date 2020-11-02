FactoryBot.define do
  factory :category do
    description { Faker::Commerce.material }
  end
end
