FactoryGirl.define do
  factory :user do
    first_name "Jessica"
    last_name "Rowland"
    email
    password
  end

  sequence :email do |n|
    "person#{n}@test.com"
  end

  sequence :password do |n|
    "#{n}password"
  end
end
