class Maps::ApiResponse

  attr_accessor :request, :floor_map

  def initialize(floor_map, request, call_number = "")
    @floor_map = floor_map
    @request = request
    @call_number = call_number.to_s
  end


  def data 
    if floor_map.nil?
      return { }
    end

    {
      call_number: @call_number,
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