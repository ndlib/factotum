class Maps::CallNumberRange < ActiveRecord::Base 
  self.table_name = 'maps_call_number_ranges'

  validates :collection_code, :sublibrary_code, :begin_call_number, :end_call_number, :floor_map, :presence => true

  belongs_to :floor_map


  def self.search_for_call_number(call_number, sublibrary, collection)
    call_number = Maps::CallNumberParser.new(call_number)  
    where(collection_code: collection)
      .where(sublibrary_code: sublibrary)
      .where(" begin_call_number <= ? AND end_call_number >= ? ", call_number.search_string, call_number.search_string).first
  end
  
  
  def self.ordered_call_number
    order(:begin_call_number)
  end  


  def building
    floor_map.building
  end  
  
end