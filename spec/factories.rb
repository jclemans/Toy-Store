FactoryGirl.define do
  factory :product do
    name Faker::Commerce.product_name
    price Faker::Number.digit
    description Faker::Lorem.sentence(3)

    factory :apple do
      name 'Apple'
      price 8.95
      description 'A delicious apple'
    end
  end
end
