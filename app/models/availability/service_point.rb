class Availability::ServicePoint < ActiveRecord::Base
  attr_accessible :name, :code, :notification_emails, :building_id

  validates :code, :uniqueness => true

  belongs_to :building

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


  def regular_hours_for_date(date = Time.zone.today)
    regular_hours.hours_for_dates(date).first
  end


  def upcoming_regular_hours(date = Time.zone.today)
    regular_hours.upcoming_hours(date)
  end


  def next_regular_hours
    upcoming_regular_hours[1]
  end


  def hours_exceptions_for_date(date = Time.zone.today)
    hours_exceptions.hours_for_dates(date)
  end


  def upcoming_hours_exceptions(date = Time.zone.today)
    hours_exceptions.upcoming_hours(date)
  end


  def regular_hours_that_can_be_cloned
    regular_hours.order('start_date desc').limit(15)
  end


  def hours_exceptions_that_can_be_cloned
    hours_exceptions.order('start_date desc').limit(20)
  end


  def clone_or_build_regular_hours(clone_id = nil)
    if clone_id.present?
      regular_hours.find(clone_id).dup
    else
      regular_hours.build
    end
  end


  def clone_or_build_hours_exception(clone_id = nil)
    if clone_id.present?
      hours_exceptions.find(clone_id).dup
    else
      hours_exceptions.build
    end
  end


  def new_hours(params)
    hours = self.regular_hours.build(params)
    hours.save()

    write_and_copy_ssi(hours)


    hours
  end


  def new_hours_exception(params)
    exception = hours_exceptions.build(params)
    exception.save

    write_and_copy_ssi(exception)

    exception
  end


  def update_hours(hours, params)
    hours.update_attributes(params)

    write_and_copy_ssi(hours)

    hours
  end


  def update_hours_exception(hours, params)
    hours.update_attributes(params)

    write_and_copy_ssi(hours)

    hours
  end


  def delete_hours(hours)
    hours.destroy

    write_and_copy_ssi(hours)
  end


  private

    def hours_source
      @hours_source ||= self.class.reflections[:regular_hours].klass
    end


    def hours_exception_source
      @hours_exception_source ||= self.class.reflections[:hours_exceptions].klass
    end


    def write_and_copy_ssi(hours)
      if hours.valid? && hours.current_hours?
        Availability::ServicePointResultPresenter.new(Availability::ServicePoint.all, ApplicationController.new).write_ssi_files
        SSIFileCopier.new.copy_all
      end
    end

end
