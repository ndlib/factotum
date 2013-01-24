# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :just_say_yes_order do
    selector
    sequence(:author) { |n| "Test Author #{n}" }
    sequence(:title) { |n| "Test Title #{n}" }
    publication_year { Date.today.year - rand(100) }
    publisher "Test Publisher"
    rush_order false
    price 50
    requester "Jaron"
    cataloging_location "Some Location"
    electronic_resource false
    fund "PCJSY"
  end
end