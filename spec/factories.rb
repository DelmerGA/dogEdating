FactoryGirl.define do

  sequence :email do |n|
    "email#{n}@factory.com"
  end

  factory :comment do
    body "some comment"
    user
  end

  factory :user do
    name "name"
    email
    password "password"
    password_confirmation "password"
  end

  factory :dog do
    name "Rusty"
    breed "mixed breed"
    age "2 years"
    park_id 1
    user_id 1
    image "img.jpg"

  end

  factory :park do
    name "Narnia"
    address "through the wardrobe"
    leash_rule "off leash"
  end
end