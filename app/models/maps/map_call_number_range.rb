class Maps::MapCallNumberRange < ActiveRecord::Base 
  validates :collection_code, :sublibrary_code, :begin_call_number, :end_call_number, :map_file, :presence => true

  belongs_to :map_file
  

  def building
    map_file.building
  end  
  
end