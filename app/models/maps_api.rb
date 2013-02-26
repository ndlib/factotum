class MapsApi

  def map_file_admin
    @map_admin ||= Maps::MapFileAdmin.new
  end


  def api_floorplan_request(params)
    floor = determine_floor_from_request(params)
    map_file = Maps::MapFile.map_for_floor(floor)

    Maps::MapsApiResponse.new(map_file)
  end


  def api_callnumber_request(params)
    map_file = Maps::MapFile.map_for_callnumber(floor)

    Maps::MapsApiResponse.new(map_file)
  end


  private
    def determine_floor_from_request(params)
      Floor.first
    end


    def determine_callnumber_from_request(params)
      "asdfadsfdfs"
    end


end