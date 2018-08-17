FactoryBot.define do
  sequence(:name) { |n| "Bike#{n}" }

  factory :product do
    name
    description "Test description"
    colour "Red"
    price 10.0
    
  end

end
