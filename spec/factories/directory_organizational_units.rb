# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :directory_organizational_unit, :class => 'Directory::OrganizationalUnit' do
  	unit_type_id "1"
  	name "IT Department"
  end
end
