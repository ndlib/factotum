class Availability::Hours < ActiveRecord::Base

  attr_accessible :hours, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday, :name, :active_dates, :prepend_text, :postpend_text, :service_point, :start_date, :end_date

  scope :hours_for_dates, lambda { |date| where("start_date <= ? AND end_date >= ?", date, date) }
  scope :upcoming_hours, lambda { |date| where("end_date >= ?", date).order('start_date') }

  validates :start_date, :end_date, :name, :service_point, :presence => true

  belongs_to :service_point


  DAYS_FIELD_ARRAY = ['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday' ]


  def hours=(hours_hash)
    hours_hash[:start_day].each_index do | index |
      if check_hours_params_get_parsed_correctly?(hours_hash, index)
        set_date_range(hours_hash[:start_day][index], hours_hash[:end_day][index], hours_hash[:hours][index])
      end
    end
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
end