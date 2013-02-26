# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :map_file, class: Maps::MapFile do
    name "Mapfile"
    file_file_name "file/file/file/"
    floor { FactoryGirl.create(:floor) }
  end
end