FactoryBot.define do
  factory :acquisition_order do
    association :selector, factory: :selector
    association :creator, factory: :user
    sequence(:author) { |n| "Test Author #{n}" }
    sequence(:title) { |n| "Test Title #{n}" }
    publication_year { Date.today.year - rand(100) }
    publisher { "Test Publisher" }
    price_code { 'USD' }
    fund { "ABCD" }
  end
end
