FactoryGirl.define do
    sequence :library_code do |n|
    "code#{n}"
  end

  sequence :library_name do |n|
    "Library#{n}"
  end

  factory :library do
    name {generate(:library_name)}
    code {generate(:library_code)}
  end
end