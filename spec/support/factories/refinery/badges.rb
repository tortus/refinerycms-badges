
FactoryGirl.define do
  factory :badge, :class => Refinery::Badges::Badge do
    sequence(:title) { |n| "refinery#{n}" }
  end
end

