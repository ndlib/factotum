class Maps::MapsApiResponse

  attr_accessor :request, :map_file

  def initialize(map_file, request)
    @map_file = map_file
    @request = request
  end


  def data 
    if map_file.nil?
      return { }
    end

    {
      library: map_file.library.name,
      floor: map_file.floor.name,
      image_url: "#{base_url}#{@map_file.file.url}"
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