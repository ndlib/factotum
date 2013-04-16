module AvailabilityHelper

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


  def options_for_unit_select
    unit_options = []
    API::Service.get(:unit).all.each do |u|
      unit_options.push [u['name'], u['id']]
    end
    unit_options
  end


  def options_for_person_select
    person_options = []
    API::Service.get(:employee).all.each do |e|
      emp_name = e['last_name'] + ', ' + e['first_name']
      person_options.push [emp_name, e['netid']]
    end
    person_options
  end


  def date_or_empty_string(date)
    if date.nil?
      ""
    else
      l(date, :format => :us)
    end
  end


  def compact_service_points_for_builder(service_points)
    service_points.collect{ | sp | "#{sp.code}: '##{sp.code}_destination'" }.join(",")
  end

end
