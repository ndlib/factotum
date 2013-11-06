# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :cataloging_transfer_type, :class => 'Cataloging::TransferType' do
  	from_location_id 1
  	to_location_id 1
  end
end
