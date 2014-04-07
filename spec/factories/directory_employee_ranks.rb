# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do

  sequence :rank_name do |n|
    "Rank #{n}"
  end

  factory :directory_employee_rank, :class => 'DirectoryEmployeeRank' do
  	name{generate(:rank_name)}
  end
  
end
