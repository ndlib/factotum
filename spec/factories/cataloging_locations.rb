# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :cataloging_location, :class => 'Cataloging::Location' do
  	name "Lerbery!"
  end
end
