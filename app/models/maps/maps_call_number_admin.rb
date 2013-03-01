class Maps::MapsCallNumberAdmin 

  attr_accessor :map_file

  def initialize(map_file)
    @map_file = map_file
  end


  def call_number_ranges
    map_file.map_call_number_ranges
  end


  def call_number_range(id = false)
    if id 
      map_file.map_call_number_ranges.find(id)
    else
      map_file.map_call_number_ranges.new
    end
  end

  
  def new_call_number_range(params)
    call_number_range = map_file.map_call_number_ranges.build(params)
    call_number_range.save()

    call_number_range
  end

  
  def update_call_number_range(call_number_range, params)
    call_number_range.update_attributes(params)

    call_number_range
  end


  def delete_call_number_range(call_number_range)
    call_number_range.destroy()
  end

end