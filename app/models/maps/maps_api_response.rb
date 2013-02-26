class Maps::MapsApiResponse

  def initialize(map_file)
    @map_file = map_file
  end


  def data 
    @map_file
    
    { }
  end


  def to_json
    data.to_json
  end


  def to_xml
    data.to_xml
  end

end