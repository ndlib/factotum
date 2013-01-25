FactoryGirl.define do

  factory :hours_exception, :class => Hours::HoursException do
    name "Exception Hours"
    friday 'Open till 6pm'
    saturday '10am - 5pm'
    sunday 'Noon - Midnight'
    prepend_text 'Pretext'
    postpend_text 'Posttext'
    saved_day_ranges 'f|sa|su'
    start_date 1.day.ago
    end_date 4.days.from_now
  end

end