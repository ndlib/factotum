FactoryBot.define do
  factory :cataloging_entry, :class => 'Cataloging::Entry' do
    cataloging_user
    association :user, factory: :cataloging_user  	
    user_id { 1 }
    entry_date { 1.days.ago }
    month_start_date { 16.days.ago }
    location_id { 1 }
    format_id { 1 }
    type { "adds" }
  	volumes_count { 6 }
  	created_at { 100.days.ago }
  	updated_at { 100.days.ago }
  end
end
