# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do

  sequence :floor_map_code do |n|
    "code#{n}"
  end

  sequence :floor_map_name do |n|
    "Library#{n}"
  end

  sequence :floor_map_number do | n |
    n
  end

  factory :floor_map, class: Maps::FloorMap do
    name {generate(:floor_map_name)}
    search_code {generate(:floor_map_code)}
    floor_number {generate(:floor_map_number)}
    map_file_name "file/file/file/"
    building { FactoryGirl.create(:building) }
  end

end