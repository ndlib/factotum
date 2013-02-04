class Availability::ServicePoint < ActiveRecord::Base
  attr_accessible :name, :code

  validates :code, :uniqueness => true

  has_many :regular_hours, :class_name => Availability::RegularHours
  has_many :hours_exceptions, :class_name => Availability::HoursException

  has_many :hours, :class_name => Availability::Hours

  scope :search_by_codes, lambda{ |codes| where('code IN (?)', codes)}


  def self.search(codes)
    if codes.present?
      if !codes.is_a?(Array)
        codes = codes.split(",").map(&:strip)
      end

      self.search_by_codes(codes)
    else
      self.all
    end
  end


  def regular_hours_for_date(date = Date.today)
    regular_hours.hours_for_dates(date).first
  end


  def upcoming_regular_hours(date = Date.today)
    regular_hours.upcoming_hours(date)
  end


  def hours_exceptions_for_date(date = Date.today)
    hours_exceptions.hours_for_dates(date)
  end


  def upcoming_hours_exceptions(date = Date.today)
    hours_exceptions.upcoming_hours(date)
  end


  def new_hours(params)
    hours = self.regular_hours.build(params)
    hours.save!

    hours
  end


  def new_hours_exception(params)
    exception = hours_exceptions.build(params)
    exception.save!

    exception
  end


  def update_hours(hours, params)

  end


  def delete_hours(hours)

  end


  def exceptions_for_week(date = Date.today)
    hours_exceptions
  end


  def set_current_hours(hours)
    self.current_hours = hours
    self.save!
  end


  private

    def hours_source
      @hours_source ||= Availability::RegularHours
    end


    def hours_exception_source
      @hours_exception_source ||= Availability::HoursException
    end

end