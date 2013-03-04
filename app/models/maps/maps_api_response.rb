class Maps::MapsApiResponse

  attr_accessor :request, :floor_map

  def initialize(floor_map, request)
    @floor_map = floor_map
    @request = request
  end


  def data 
    if floor_map.nil?
      return { }
    end

    {
      library: floor_map.building.name,
      floor: floor_map.name,
      image_url: "#{base_url}#{@floor_map.map.url}"
    }
  end


  def to_json(options = {})
    data.to_json(root: "stack_maps")
  end


  def to_xml(options = {})
    data.to_xml(root: 'stack_maps')
  end


  private 

    def base_url
      "#{request.protocol}#{request.host_with_port}"
    end

end