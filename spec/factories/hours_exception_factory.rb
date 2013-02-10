FactoryGirl.define do

  factory :hours_exception, :class => Availability::HoursException do
    name "Exception Hours"
    friday 'Open till 6pm'
    saturday '10am - 5pm'
    sunday 'Noon - Midnight'
    prepend_text 'Pretext'
    postpend_text 'Posttext'
    start_date 1.day.ago
    end_date 4.days.from_now

    service_point { FactoryGirl.create(:service_point) }
  end

end