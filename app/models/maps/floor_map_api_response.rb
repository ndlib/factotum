class Maps::FloorMapApiResponse

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
      image_url: "#{base_url}#{@floor_map.map.url}",
      call_number_ranges: call_number_range_data
    }
  end


  def to_json(options = {})
    data.to_json()
  end


  private

    def base_url
      "#{request.protocol}#{request.host_with_port}"
    end


    def call_number_range_data
      @floor_map.call_number_ranges.collect { | cnr | { begin_call_number_range: cnr.begin_call_number, end_call_number_range: cnr.end_call_number, collection_code: cnr.collection_code, sublibrary_code: cnr.sublibrary_code } }
    end

end
