class Maps::MapFile < ActiveRecord::Base
  validates :name, presence: true
  validates :file_file_name, presence: true

  has_attached_file :file 

  has_many :floor_map_files, class_name: 'Maps::FloorsMapFile'
  has_many :floors, through: :floor_map_files

end