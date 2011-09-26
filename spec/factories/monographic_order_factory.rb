FactoryGirl.define do
  factory :monographic_order do
    sequence(:author) { |n| "Test Author #{n}" }
    sequence(:title) { |n| "Test Title #{n}" }
    publication_year { Date.today.year - rand(100) }
    publication_place "Notre Dame, IN"
    publisher "Test Publisher"
    rush_order false
    cataloging_location "Some Location"
    fund "ABCD"
  end
  
end