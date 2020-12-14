# Read about factories at https://github.com/thoughtbot/factory_bot

FactoryBot.define do
  factory :cataloging_special_procedure_type, :class => 'Cataloging::SpecialProcedureType' do
  	name { "ErMahGerd Berks!" }
  end
end
