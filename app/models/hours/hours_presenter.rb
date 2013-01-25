class Hours::HoursPresenter < SimpleDelegator

  DAY_KEY_DAY_NAME = { 'm' => 'Monday', 'tu' => 'Tuesday', 'w' => 'Wednesday', 'th' => 'Thursday', 'f' => 'Friday', 'sa' => 'Saturday', 'su' => 'Sunday' }


  def data
    {
        name: self.name,
        hours: generate_hours_response,
        prepend_text: self.prepend_text,
        postpend_text: self.postpend_text,
    }
  end


  def to_json(options = {})
    data.to_json
  end

  private

  def generate_hours_response
    ret = [ ]
    parse_day_range.each do | dr |
      ret << { days: determine_range_days_text(dr), hours: determine_range_hours_text(dr) }
    end

    ret
  end


  def parse_day_range
    self.saved_day_ranges.split("|").map { |r| r.split(',')}
  end


  def determine_range_days_text(range)
    if range.size > 1
      "#{lookup_day_name(range.first)} - #{lookup_day_name(range.last)}"
    else
      lookup_day_name(range.first)
    end
  end


  def determine_range_hours_text(range)
    self.send(lookup_day_name(range.first).downcase)
  end


  def lookup_day_name(day_key)
    DAY_KEY_DAY_NAME[day_key.downcase]
  end
end