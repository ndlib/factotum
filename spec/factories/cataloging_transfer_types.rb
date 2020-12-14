# Read about factories at https://github.com/thoughtbot/factory_bot

FactoryBot.define do
  factory :cataloging_transfer_type, :class => 'Cataloging::TransferType' do
  	from_location_id { 100 }
  	to_location_id { 100 }
  end
end
