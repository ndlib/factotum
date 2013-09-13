class Cataloging::Format < ActiveRecord::Base
  has_and_belongs_to_many :locations, :class_name => Cataloging::Location, :join_table => 'cataloging_locations_formats', :foreign_key => "cataloging_locations_id", :association_foreign_key => "cataloging_formats_id"

  validates :name, presence: true 
  validates_uniqueness_of :name

  def self.sorted
    order(:name)
  end

  def self.available_for_location(location)
  	order(:name).where('id not in (?)',location.format_ids.empty? ? '' : location.format_ids).all
  end


  def self.valid_for_location(location)
  	order(:name).where('id in (?)',location.format_ids.empty? ? '' : location.format_ids).all
  end


end
