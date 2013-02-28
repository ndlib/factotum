# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do

  factory :map_file, class: Maps::MapFile do
    name "Mapfile"
    search_code "code"
    file_file_name "file/file/file/"
    building { FactoryGirl.create(:building) }
  end

end