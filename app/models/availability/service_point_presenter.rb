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
    @context.render_to_string(partial: "/availability/hours/service_point", locals: { service_point: self, regular_hours: render_regular_hours, hours_exceptions: render_hours_exceptions  })
  end


  def render_hours(hours)
    return "" if hours.nil?

    Availability::HoursPresenter.new(hours, @context).render
  end


  def render_regular_hours
    render_hours(find_regular_hours)
  end


  def render_hours_exceptions
    rendered_exceptions = ""

    self.hours_exceptions_for_date(@search_time).each do | exception |
      rendered_exceptions += render_hours(exception)
    end

    rendered_exceptions
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
