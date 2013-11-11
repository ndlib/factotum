# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :directory_contact_information, :class => 'DirectoryContactInformation' do
  	type "Phone"
  	contact_information "888-888-9000" 
  	contactable_id "1"
  	contactable_type "DirectoryEmployee"
  end

  factory :directory_contact_phone, :class => 'DirectoryPhone' do
  	contact_information "888-888-9000" 
  	contactable_id "1"
  	contactable_type "DirectoryEmployee"
  end

  factory :directory_contact_fax, :class => 'DirectoryFax' do
    contact_information "888-888-9000" 
    contactable_id "1"
    contactable_type "DirectoryOrganizationalUnit"
  end  

end
