FactoryBot.define do
  factory :product do
    description { Faker::Food.description }
    price { Faker::Commerce.price }
    category
  end
end
