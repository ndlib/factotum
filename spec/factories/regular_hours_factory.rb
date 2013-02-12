FactoryGirl.define do

  factory :regular_hours, :class => Availability::RegularHours do
    prepend_text "Pretext"
    append_text "Posttext"
    monday "Open 24 hours"
    tuesday "Open 24 hours"
    wednesday "Open 24 hours"
    thursday "Open 24 hours"
    friday "Open till 10pm"
    saturday "9am - 7pm"
    sunday "Opens at 10am"
    name "Regular Hours"
    start_date 5.months.ago
    end_date 2.months.from_now
    service_point { FactoryGirl.create(:service_point) }
  end


end