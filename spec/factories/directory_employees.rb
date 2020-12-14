FactoryBot.define do

  sequence :first_name do |n|
    "MaryBeth#{n}"
  end

  sequence :last_name do |n|
    "Johnson#{n}"
  end

  sequence :netid do |n|
    "netid#{n}"
  end



  factory :directory_employee, :class => 'DirectoryEmployee' do
    first_name {generate(:first_name)}
    last_name {generate(:last_name)}
    netid {generate(:netid)}
    photo { "me.jpg" }
    rank  { FactoryBot.create(:directory_employee_rank) }
    status { FactoryBot.create(:directory_employee_status) }
    created_at { 20.days.ago }
    updated_at { 10.days.ago }
  end

  factory :directory_employee_librarian, :class => 'DirectoryEmployee' do
    first_name {generate(:first_name)}
    last_name {generate(:last_name)}
    netid {generate(:netid)}
    photo { "me.jpg" }
    rank  { FactoryBot.create(:directory_employee_rank) }
    status { FactoryBot.create(:directory_employee_status) }
    created_at { 20.days.ago }
    updated_at { 10.days.ago }
  end


  factory :directory_employee_manager, :class => 'DirectoryEmployee' do
    id { 1001 }
    first_name { "Mr" }
    last_name { "Manager" }
    netid { "manager" }
    photo { "me.jpg" }
    rank  { FactoryBot.create(:directory_employee_rank) }
    status { FactoryBot.create(:directory_employee_status) }
    created_at { 20.days.ago }
    updated_at { 10.days.ago }
  end

  factory :directory_employee_subordinate, :class => 'DirectoryEmployee' do
  	id { 1000 }
    first_name { "Sub" }
  	last_name { "Ordinate" }
  	netid { "sub" }
  	photo { "me.jpg" }
    supervisor_id { "1001" }
    rank  { FactoryBot.create(:directory_employee_rank) }
    status { FactoryBot.create(:directory_employee_status) }
  	created_at { 20.days.ago }
  	updated_at { 10.days.ago }
  end
end
