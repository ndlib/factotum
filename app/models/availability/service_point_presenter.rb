class Availability::ServicePointPresenter < SimpleDelegator

  def initialize(service, date = Time.zone.today, context = nil)
    super(service)
    @search_time = date
    @context = nil
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


  def render

  end


  private


  def regular_hours_data
    if (hours = self.regular_hours_for_date(@search_time))
      Availability::HoursPresenter.new(hours, @context).data
    else
      {hours: []}
    end
  end


  def hours_exception_data
    self.hours_exceptions_for_date(@search_time).collect{ | exception | Availability::HoursPresenter.new(exception).data }
  end


end