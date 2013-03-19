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


  def no_current_hours?
    self.regular_hours_for_date(@search_time).nil?
  end


  def gap_between_regular_hours?(current_row, previous_row)
    !previous_row.nil? && (previous_row.end_date + 1.day) < current_row.start_date
  end


  def gap_in_regular_hours?
    previous_hours = nil
    self.upcoming_regular_hours.each do | hours |
      return true if gap_between_regular_hours?(hours, previous_hours)
      previous_hours = hours
    end

    false
  end


  def render
    @context.render_to_string(partial: "/availability/hours/service_point", locals: { service_point: self, regular_hours: render_regular_hours, hours_exceptions: render_hours_exceptions  })
  end


  def render_hours(hours, print = false)
    return "" if hours.nil?

    Availability::HoursPresenter.new(hours, @context).render(print)
  end


  def render_regular_hours(print = false)
    render_hours(find_regular_hours, print)
  end


  def render_hours_exceptions(print = false)
    rendered_exceptions = ""

    self.hours_exceptions_for_date(@search_time).each do | exception |
      rendered_exceptions += render_hours(exception, print)
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
      self.regular_hours_for_date(@search_time) || self.regular_hours.previous_hours(@search_time).first
    end


    def regular_hours_data
      if (hours = self.regular_hours_for_date(@search_time))
        Availability::HoursPresenter.new(hours, @context).data
      else
        { hours: [] }
      end
    end


    def hours_exception_data
      self.hours_exceptions_for_date(@search_time).collect{ | exception | Availability::HoursPresenter.new(exception).data }
    end


    def ssi_file_path
      path = Rails.root.join('ssi/hours')

      unless File.directory?(path)
        FileUtils.mkdir_p(path)
      end

      path.join("#{self.code.underscore.downcase}.shtml")
    end

end
