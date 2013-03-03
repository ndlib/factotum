class Maps::CallNumberRange < ActiveRecord::Base 
  self.table_name = 'maps_call_number_ranges'

  validates :collection_code, :sublibrary_code, :begin_call_number, :end_call_number, :floor_map, :presence => true

  belongs_to :floor_map
  

  def building
    floor_map.building
  end  
  
end