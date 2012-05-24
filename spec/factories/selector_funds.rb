# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :selector_fund do
    selector
    sequence(:name) { |n| "TSTFND#{n}" }
  end
end