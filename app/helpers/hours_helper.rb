module HoursHelper

  def options_for_days_of_the_week(blank_title, selected)
    arr = [[blank_title, ""], ['Monday', 'monday'], ['Tuesday', 'tuesday'], ['Wednesday', 'wednesday'], ['Thursday', 'thursday'], ['Friday', 'friday'], ['Saturday', 'saturday'], ['Sunday', 'sunday'] ]

    options_for_select(arr, selected)
  end


  def number_of_hours_rows(hours)
    if hours.size > 4
      hours.size
    end

    4
  end


  def date_or_empty_string(date)
    if date.nil?
      ""
    else
      l(date, :format => :us)
    end
  end


  def gap_in_regular_hours?(current_row, previous_row)
     previous_row.present? && (previous_row.end_date + 1.day) < current_row.start_date
  end


  def first_regular_hours_not_active?(current_hours)
    current_hours.start_date > Time.now
  end


  def compact_service_points_for_builder(service_points)
    service_points.collect{ | sp | "#{sp.code}: '##{sp.code}_destination'" }.join(",")
  end

end
