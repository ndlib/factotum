FactoryBot.define do

  sequence :contactable_id do |n|
    "#{n}"
  end

  factory :directory_contact_information, :class => 'DirectoryContactInformation' do
  	type { "DirectoryContactPhone" }
  	contact_information { "888-888-9000" }
  	contactable_id {generate(:contactable_id)}
  	contactable_type { "DirectoryEmployee" }
  end

  factory :directory_contact_phone, :class => 'DirectoryContactPhone' do
  	type { "DirectoryContactPhone" }
  	contact_information { "888-888-9000" }
  	contactable_id {generate(:contactable_id)}
  	contactable_type { "DirectoryEmployee" }
  end

  factory :directory_contact_fax, :class => 'DirectoryContactFax' do
  	type { "DirectoryContactFax" }
    contact_information { "888-888-9000"}
  	contactable_id {generate(:contactable_id)}
    contactable_type { "DirectoryOrganizationalUnit" }
  end  

  factory :directory_contact_address, :class => 'DirectoryContactAddress' do
  	type { "DirectoryContactAddress" }
    contact_information { "1111 Nowhere Lane" }
  	contactable_id {generate(:contactable_id)}
    contactable_type { "DirectoryEmployee" }
  end  

  factory :directory_contact_email, :class => 'DirectoryContactEmail' do
  	type { "DirectoryContactEmail" }
    contact_information { "mock@nowhere.edu" }
  	contactable_id {generate(:contactable_id)}
    contactable_type { "DirectoryEmployee" }
  end  

  factory :directory_contact_webpage, :class => 'DirectoryContactWebpage' do
  	type { "DirectoryContactWebpage" }
    contact_information { "http://nowhere.edu" }
  	contactable_id {generate(:contactable_id)}
    contactable_type { "DirectoryEmployee" }
  end  
end
