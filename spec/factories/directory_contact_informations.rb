# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :directory_contact_information, :class => 'Directory::ContactInformation' do
  	type "Phone"
  	contact_information "888-888-9000" 
  	contactable_id "1"
  	contactable_type "Directory::Employee"
  end

  factory :directory_contact_phone, :class => 'Directory::Phone' do
  	contact_information "888-888-9000" 
  	contactable_id "1"
  	contactable_type "Directory::Employee"
  end

  factory :directory_contact_fax, :class => 'Directory::Fax' do
    contact_information "888-888-9000" 
    contactable_id "1"
    contactable_type "Directory::OrganizationalUnit"
  end  

end
