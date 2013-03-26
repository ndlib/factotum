class Availability::Hours < ActiveRecord::Base

  attr_accessible :hours, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday, :name, :prepend_text, :append_text, :service_point, :start_date, :end_date

  scope :hours_for_dates, lambda { |date| where("start_date <= ? AND end_date >= ?", date, date) }
  scope :upcoming_hours, lambda { |date| where("end_date >= ?", date).order('start_date') }
  scope :previous_hours, lambda { |date| where("start_date <= ?", date).order('start_date') }

  validates :start_date, :end_date, :name, :service_point, :presence => true

  belongs_to :service_point


  DAYS_FIELD_ARRAY = ['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday' ]

  def dup
    hours = super
    hours.start_date = nil
    hours.end_date = nil

    hours
  end


  def hours=(hours_hash)
    reset_hours

    parser = HoursParamsParser.new
    parser.parse(hours_hash)

    DAYS_FIELD_ARRAY.each do | k |
      self.send("#{k.downcase}=", parser.send(k))
    end
  end


  def hours
    HoursOutputGenerator.new(self).generate
  end


  private


  def reset_hours
    DAYS_FIELD_ARRAY.each do | k |
      self.send("#{k.downcase}=", "")
    end
  end


  class HoursParamsParser
    attr_accessor :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday

    def parse(params)
      set_date_range('monday', 'sunday', '')

      params[:start_day].each_index do | index |
        if check_hours_params_get_parsed_correctly?(params, index)
          set_date_range(params[:start_day][index], params[:end_day][index], params[:hours][index])
        end
      end
    end


    private

      def set_date_range(start_day, end_day, text)

        start_day = start_day.downcase
        end_day = end_day.downcase

        all_keys = Availability::Hours::DAYS_FIELD_ARRAY

        if start_day == end_day
          length = 1
        else
          length = all_keys.index(end_day) + 1 - all_keys.index(start_day)
        end

        keys = all_keys.slice(all_keys.index(start_day), length)
        keys.each do | k |
          self.send("#{k.downcase}=", text.to_s)
        end
      end


      def check_hours_params_get_parsed_correctly?(params, index)
        if params[:end_day][index].empty?
         params[:end_day][index] = params[:start_day][index]
        end

        return (params[:start_day][index].present? && params[:hours][index].present?)
      end
  end


  class HoursOutputGenerator
    delegate :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday, to: :hours
    attr_accessor :hours

    def initialize(hours)
      @hours = hours
    end


    def generate
      ret = []
      current_text = ''
      last_method = ''
      first_method = ''
      Availability::Hours::DAYS_FIELD_ARRAY.each do | method |
        txt = self.send(method)
        if txt.present?
          if txt != current_text
            if last_method.present? && first_method.present?
              ret << hours_hash(first_method, last_method, current_text)
            end
            current_text = txt
            first_method = method
          end
        elsif first_method.present?
          if last_method.present?
            ret << hours_hash(first_method, last_method, current_text)
          else
            ret << hours_hash(first_method, first_method, current_text)
          end
          first_method = ''
        end
        last_method = method
      end
      if last_method.present? && first_method.present?
        ret << hours_hash(first_method, last_method, current_text)
      end

      ret
    end

    private

      def hours_hash(first_method, last_method, current_text)
        if last_method == first_method
          { days: "#{first_method.capitalize}", start_day: first_method, end_day: last_method, hours: current_text }
        else
          { days: "#{first_method.capitalize} - #{last_method.capitalize}", start_day: first_method, end_day: last_method, hours: current_text }
        end
      end
  end
end
