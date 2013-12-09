FactoryGirl.define do

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
  	photo "me.jpg"
  	rank_id "1"
  	status_id "1"
  	created_at 20.days.ago
  	updated_at 10.days.ago
  end
end
