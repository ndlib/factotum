class Maps::MapFile < ActiveRecord::Base
  validates :name, :floor, presence: true
  validates :file_file_name, presence: true

  has_attached_file :file, styles: { medium: "300x300>", thumb: "100x100>" }

  belongs_to :floor
  
  
  def self.map_for_floor(floor)
    where('floors.name = ? ', floor.id).joins(:floor).first 
  end


  def library
    floor.library
  end
end