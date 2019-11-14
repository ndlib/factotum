FactoryBot.define do
  factory :cataloging_user, :class => 'Cataloging::User' do
  	name { "berks gerl" }
  	default_location_id { "1" }
  	default_format_id { "1" }
  	supervisor_id { "2" }
  	admin { "1" }
  	username { "bgerl" }
  	last_sign_in_at { 1.days.ago }
  	created_at { 20.days.ago }
  	updated_at { 10.days.ago }
  end
end
