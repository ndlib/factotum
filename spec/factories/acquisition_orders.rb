# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :acquisition_order do
    selector
    sequence(:author) { |n| "Test Author #{n}" }
    sequence(:title) { |n| "Test Title #{n}" }
    publication_year { Date.today.year - rand(100) }
    publisher "Test Publisher"
    rush_order false
    cataloging_location "Some Location"
    fund "ABCD"
  end
end