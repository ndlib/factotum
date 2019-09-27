FactoryBot.define do
  factory :selector_fund do
    selector
    sequence(:name) { |n| "TSTFND#{n}" }
  end
end