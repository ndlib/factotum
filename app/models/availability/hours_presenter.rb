class Availability::HoursPresenter < SimpleDelegator

  DAYS_FIELD_ARRAY = ['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday' ]

  def initialize(hours, context = nil)
    super(hours)
    @context = context
  end


  def data
    {
        name: self.name,
        hours: generate_hours_response,
        prepend_text: self.prepend_text,
        append_text: self.append_text,
    }
  end


  def to_json(options = {})
    data.to_json
  end


  def render
    @context.render(partial: "/availability/hours/simple_hours", locals: { hours: self, hours_rows: generate_hours_response })
  end

  private

  def generate_hours_response
    if !self.nil?
      self.hours
    else
      []
    end
  end

end