FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "Mike#{n}s@building.com" }
    sequence(:password) { |n| "thepassword#{n}" }
  end
end
