class Availability::Hours < ActiveRecord::Base

  attr_accessible :hours, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday, :name, :prepend_text, :append_text, :service_point, :start_date, :end_date

  scope :hours_for_dates, lambda { |date| where("start_date <= ? AND end_date >= ?", date, date) }
  scope :upcoming_hours, lambda { |date| where("end_date >= ?", date).order('start_date') }
  scope :previous_hours, lambda { |date| where("start_date <= ?", date).order('start_date') }

  validates :start_date, :end_date, :name, :service_point, :presence => true

  belongs_to :service_point


  DAYS_FIELD_ARRAY = ['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday' ]

  def clone
    hours = super
    hours.id = nil
    hours.start_date = nil
    hours.end_date = nil

    hours
  end


  def hours=(hours_hash)
    hours_hash[:start_day].each_index do | index |
      if check_hours_params_get_parsed_correctly?(hours_hash, index)
        set_date_range(hours_hash[:start_day][index], hours_hash[:end_day][index], hours_hash[:hours][index])
      end
    end
  end


  def hours
    ret = []
    current_text = ''
    last_method = ''
    first_method = ''
    DAYS_FIELD_ARRAY.each do | method |
      txt = self.send(method)
      if txt.present?
        if txt != current_text
          if last_method.present? && first_method.present?
            ret << hours_hash(first_method, last_method, current_text)
          end
          current_text = txt
          first_method = method
        end

      end
      last_method = method
    end
    if last_method.present? && first_method.present?
      ret << hours_hash(first_method, last_method, current_text)
    end

    ret
  end

  private

  def set_date_range(start_day, end_day, text)
    start_day = start_day.downcase
    end_day = end_day.downcase

    all_keys = DAYS_FIELD_ARRAY

    length = all_keys.index(end_day) + 1 - all_keys.index(start_day)
    keys = all_keys.slice(all_keys.index(start_day), length)

    keys.each do | k |
      self.send("#{k.downcase}=", text)
    end
  end


  def check_hours_params_get_parsed_correctly?(hours_hash, index)
    if hours_hash[:end_day][index].empty?
     hours_hash[:end_day][index] = hours_hash[:start_day][index]
    end

    return hours_hash[:start_day][index].present?
  end


  def hours_hash(first_method, last_method, current_text)
    if last_method == first_method
      { days: "#{first_method.capitalize}", start_day: first_method, end_day: last_method, hours: current_text }
    else
      { days: "#{first_method.capitalize} - #{last_method.capitalize}", start_day: first_method, end_day: last_method, hours: current_text }
    end
  end

end