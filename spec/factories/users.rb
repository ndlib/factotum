# Read about factories at http://github.com/thoughtbot/factory_bot

FactoryBot.define do
  factory :user do
    sequence(:username) { |n| "test#{n}" }
    sequence(:first_name) { |n| "First#{n}" }
    sequence(:last_name) { |n| "Last#{n}" }
    sequence(:email) { |n| "test#{n}@example.com"}
    sequence(:phone) { |n| "574-631-#{"%04d" % n}"}
    sequence(:ldapaddress) { |n| "#{n} Hesburgh Library$Notre Dame, IN 46556-5629"}
    affiliation { "Staff" }
    department { "Hesburgh Library" }
  end

end
