# Read about factories at http://github.com/thoughtbot/factory_bot

FactoryBot.define do
  factory :acquisition_export do
    start_date { Date.today - 10.days }
    end_date { Date.today + 1.day }
    after(:create) do |export|
      # Create some orders that may be exported
      create_list(:just_say_yes_order, 3)
    end
  end
end