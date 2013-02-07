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
        postpend_text: self.postpend_text,
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
    ret = []
    current_text = ''
    last_method = ''
    first_method = ''
    DAYS_FIELD_ARRAY.each do | method |
      txt = self.send(method)
      if txt.present?
        if txt != current_text
          if last_method.present? && first_method.present?
            if last_method == first_method
              ret << { days: "#{first_method.capitalize}", hours: current_text }
            else
              ret << { days: "#{first_method.capitalize} - #{last_method.capitalize}", hours: current_text }
            end
          end
          current_text = txt
          first_method = method
        end

      end
      last_method = method
    end
    if last_method == first_method
      ret << { days: "#{first_method.capitalize}", hours: current_text }
    else
      ret << { days: "#{first_method.capitalize} - #{last_method.capitalize}", hours: current_text }
    end

    ret
  end

end