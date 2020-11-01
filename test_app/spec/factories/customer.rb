# frozen_string_literal: true

FactoryBot.define do
  factory :customer, aliases: [:user] do

    transient do
      upcased false
    end

    name { Faker::Name.name }
    email { Faker::Internet.email }

    trait :male do
      gender 'M'
    end

    trait :female do
      gender 'F'
    end

    trait :vip do
      vip true
      days_to_pay 30
    end

    trait :default do
      vip false
      days_to_pay 15
    end

    factory :customer_vip, traits: [:vip]
    factory :customer_default, traits: [:default]
    factory :customer_male, traits: [:male]
    factory :customer_female, traits: [:female]
    factory :customer_male_vip, traits: %i[male vip]
    factory :customer_female_vip, traits: %i[female vip]
    factory :customer_male_default, traits: %i[male default]
    factory :customer_female_default, traits: %i[female default]

    after(:create) do |customer, evaluated|
      customer.name.upcase! if evaluated.upcased
    end
  end
end
