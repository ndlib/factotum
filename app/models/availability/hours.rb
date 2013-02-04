class Availability::Hours < ActiveRecord::Base

  attr_accessible :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday, :name, :saved_day_ranges, :active_dates, :prepend_text, :postpend_text, :service, :start_date, :end_date


  scope :hours_for_dates, lambda { |date| where("start_date <= ? AND end_date >= ?", date, date) }
  scope :upcoming_hours, lambda { |date| where("end_date >= ?", date).order('start_date') }


  def hours=(hours_hash)

  end

  def hours

  end

  private

end