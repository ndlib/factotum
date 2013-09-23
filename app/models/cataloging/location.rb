class Cataloging::Location < ActiveRecord::Base
  has_and_belongs_to_many :formats, :class_name => Cataloging::Format, :join_table => 'cataloging_locations_formats', :foreign_key => "cataloging_formats_id", :association_foreign_key => "cataloging_locations_id"

  
  validates :name, presence: true 
  validates_uniqueness_of :name


  def self.sorted
    order("(case when name = 'Hesburgh' then 1 else 0 end) desc, name asc")
  end



end
