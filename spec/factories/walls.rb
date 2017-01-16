FactoryGirl.define do
  factory :wall do
    sequence(:wall_name) { |n| "master north#{n}" }
    sequence(:height) { |n| "#{n}" }
    sequence(:length) { |n| "#{n}" }
  end
end
