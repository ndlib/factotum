# Read about factories at https://github.com/thoughtbot/factory_bot

FactoryBot.define do
  factory :cataloging_location, :class => 'Cataloging::Location' do
  	name { "Lerbery!" }
  end
end
