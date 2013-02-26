class Maps::MapsApiResponse

  def initialize(map_file)
    @map_file = map_file
  end


  def data 
    if @map_file.nil?
      { }
    end
  end


  def to_json(options = {})
    data.to_json(root: "stack_maps")
  end


  def to_xml(options = {})
    data.to_xml(root: 'stack_maps')
  end

end