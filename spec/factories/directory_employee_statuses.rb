# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :directory_employee_status, :class => 'Directory::EmployeeStatus' do
  	name "regular"
  end
end
