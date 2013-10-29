# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :directory_employee_rank, :class => 'Directory::EmployeeRank' do
  	name "staff"
  end
end
