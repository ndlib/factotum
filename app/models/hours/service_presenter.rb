class Hours::ServicePresenter < SimpleDelegator

  def initialize(service, date = Date.today)
    super(service)
    @search_time = date
  end


  def data
    {
        name: self.name,
        code: self.code,
        regular_hours: regular_hours_data,
        hours_exceptions: hours_exception_data,
    }
  end


  def to_json(options = {})
    data.to_json()
  end

  private


  def regular_hours_data
    if (hours = self.regular_hours_for_date(@search_time))
      Hours::HoursPresenter.new(hours).data
    else
      {hours: []}
    end
  end


  def hours_exception_data
    self.hours_exceptions_for_date(@search_time).collect{ | exception | Hours::HoursPresenter.new(exception).data }
  end


end