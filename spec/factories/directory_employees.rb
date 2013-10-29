# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :directory_employee, :class => 'Directory::Employee' do
  	first_name "Mary"
  	last_name "Smith"
  	netid "msmith"
  	photo "me.jpg"
  	rank_id "1"
  	status_id "1"
  	created_at 20.days.ago
  	updated_at 10.days.ago
  end
end
