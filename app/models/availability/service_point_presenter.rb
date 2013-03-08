class Availability::ServicePointPresenter < SimpleDelegator
  attr_accessor :search_time

  def initialize(service, date = Time.zone.today, context = nil)
    super(service)
    @search_time = date
    @context = context
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
    rendered_regular_hours = ""
    rendered_exceptions = ""

    if !regular_hours_response.nil?
      rendered_regular_hours += regular_hours_response.render
    end

    self.hours_exceptions_for_date(@search_time).each do | exception |
      e = Availability::HoursPresenter.new(exception, @context)
      rendered_exceptions += e.render
    end

    @context.render_to_string(partial: "/availability/hours/service_point", locals: { service_point: self, regular_hours: rendered_regular_hours, hours_exceptions: rendered_exceptions  })
  end


  def regular_hours_response
    if find_regular_hours
      @regular_hours ||= Availability::HoursPresenter.new(find_regular_hours, @context)
    else
      nil
    end
  end


  def write_ssi_file
    return if @context.nil?
    content = render

    File.open(ssi_file_path, "w") { |f| f << content }
  end


  private

  def find_regular_hours
    self.regular_hours_for_date(@search_time)
  end


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


  def ssi_file_path
    Rails.root.join('ssi').join("#{self.code.underscore.downcase}.shtml")
  end


end
