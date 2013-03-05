FactoryGirl.define do
  sequence :building_code do |n|
    "code#{n}"
  end

  sequence :building_name do |n|
    "Library#{n}"
  end

  factory :building do
    name {generate(:building_name)}
    search_code {generate(:building_code)}
  end
end