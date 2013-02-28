class Maps::MapFile < ActiveRecord::Base
  validates :name, :search_code, :building, presence: true
  validates :file_file_name, presence: true

  has_attached_file :file, styles: { medium: "300x300>", thumb: "100x100>" }
  
  belongs_to :building  
  
  
  def self.map_for_floor_and_building(search_code, building)
    where("#{self.table_name}.search_code = ? AND building_id = ?", search_code, building.id).joins(:building).first 
  end
  
end