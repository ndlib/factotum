class Maps::CallNumberRange < ActiveRecord::Base 
  set_table_name :maps_call_number_ranges

  validates :collection_code, :sublibrary_code, :begin_call_number, :end_call_number, :map_file, :presence => true

  belongs_to :map_file
  

  def building
    map_file.building
  end  
  
end