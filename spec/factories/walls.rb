FactoryGirl.define do
  factory :wall do
    sequence(:wall_name) { |n| "test wall#{n}" }
    sequence(:height) { |n| "#{n}" }
    sequence(:length) { |n| "#{n}" }
  end
end
