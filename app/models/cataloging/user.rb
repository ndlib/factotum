class Cataloging::User < ActiveRecord::Base

  belongs_to :default_location, :class_name => Cataloging::Location, :foreign_key => "default_location_id"
  belongs_to :default_format, :class_name => Cataloging::Format, :foreign_key => "default_format_id"
  has_many :entries, :class_name => Cataloging::Entry, :dependent => :restrict_with_exception
  has_many :copy_catalogings, :class_name => Cataloging::CopyCataloging
  has_many :original_catalogings, :class_name => Cataloging::OriginalCataloging
  has_many :special_procedures, :class_name => Cataloging::SpecialProcedure
  has_many :transfers, :class_name => Cataloging::Transfer
  has_many :volume_additions, :class_name => Cataloging::VolumeAddition
  has_many :withdrawals, :class_name => Cataloging::Withdrawal
  has_many :subordinates, :class_name => Cataloging::User, :foreign_key => "supervisor_id", :dependent => :restrict_with_exception
  belongs_to :supervisor, :class_name => Cataloging::User

  validates_uniqueness_of :username

  scope :sorted, -> { order('name asc, username asc') }

  def to_s
    display_name.to_s
  end

  def to_str
    self.to_s
  end

  def display_name
    if self.name.present?
      self.name
    else
      self.username
    end
  end


  def available_months
    start_date = entries.months.minimum("month_start_date")

    if start_date.nil? then
      start_date = 2.months.ago.beginning_of_month
    end

    last_date = Time.now.beginning_of_month
    month_difference = (last_date.year*12+last_date.month)-(start_date.year*12+start_date.month)

    (0..month_difference).map{|i| last_date - i.months }

  end


  def previous_available_months
    # display dropdown for three months back and on
    (1..12).map{|i| available_months.min - i.months }
  end


  def available_supervisors
    where("id != ?", self.id)
  end


  def descendents
    subordinates.sorted.map do |sub|
      [sub] + sub.descendents
    end.flatten
  end

  def self_and_descendents
    [self] + descendents
  end


end
