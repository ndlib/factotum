# Read about factories at https://github.com/thoughtbot/factory_bot

FactoryBot.define do
  factory :directory_unit_type, :class => 'DirectoryUnitType' do
  	name { "department" }
  end
end
