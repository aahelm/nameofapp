FactoryBot.define do
  sequence(:email) { |n| "achelm#{n}@example.com" }

  factory :user do
    email
    password "1234567890"
    first_name "Aaron"
    last_name "Example"
    admin false
  end
end
