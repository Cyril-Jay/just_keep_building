FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "Mike#{n}@building.com"}
    sequence(:password) { |n| "password#{n}"}
  end
end
