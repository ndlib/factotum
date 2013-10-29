# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :directory_unit_type, :class => 'Directory::UnitType' do
  	name "department"
  end
end
