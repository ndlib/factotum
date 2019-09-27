# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryBot.define do
  factory :directory_employee_unit, :class => 'DirectoryEmployeeUnit' do
  	organizational_unit_id { 1 }
  	employee_id { 1 }
  end
end
