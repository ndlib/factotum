class Cataloging::TransferType < ActiveRecord::Base

  belongs_to :from_location, :class_name => Cataloging::Location, :foreign_key => "from_location_id"
  belongs_to :to_location, :class_name => Cataloging::Location, :foreign_key => "to_location_id"

  has_many :transfers, :dependent => :restrict_with_exception

  validates :from_location_id, presence: true
  validates :to_location_id, presence: true
  validates_uniqueness_of :to_location_id, scope: :from_location_id

  def to_s
    display_name.to_s
  end

  def display_name
    "#{from_location.name} to #{to_location.name}"
  end


  def self.sorted
    order(:from_location_id, :to_location_id)
  end



end