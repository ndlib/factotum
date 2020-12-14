# Read about factories at https://github.com/thoughtbot/factory_bot

FactoryBot.define do

  sequence :status_name do |n|
    "Status#{n}"
  end

  factory :directory_employee_status, :class => 'DirectoryEmployeeStatus' do
  	name{generate(:status_name)}
  end

end
