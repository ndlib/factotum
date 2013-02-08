# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :selector do
    sequence(:netid) { |n| "testselector#{n}" }
    monographic true

    factory :selector_admin do
      monographic false
      admin true
    end
  end
end
