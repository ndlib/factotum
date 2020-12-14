# Read about factories at https://github.com/thoughtbot/factory_bot

FactoryBot.define do
  factory :cataloging_format, :class => 'Cataloging::Format' do
  	name { "Berks!" }
  end
end
