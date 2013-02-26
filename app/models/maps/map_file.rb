class Maps::MapFile < ActiveRecord::Base
  validates :name, presence: true
  validates :file_file_name, presence: true

  has_attached_file :file, styles: { medium: "300x300>", thumb: "100x100>" }

  belongs_to :floor

  def self.map_for_floor_and_building(floor, library = nil)
    library = library.nil? ? Library.hesburgh_library : library 
    self.where('floors.name = ? AND libraries.code = ?', floor.name, library.code).joins(:floor => :library).first 
  end 
end