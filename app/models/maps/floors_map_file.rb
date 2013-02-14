class Maps::FloorsMapFile < ActiveRecord::Base
  belongs_to :maps, class_name: 'Maps::MapFile'
  belongs_to :floor
end