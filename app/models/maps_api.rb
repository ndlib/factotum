class MapsApi

  def initialize(request)
    @request = request
  end

  def map_file_admin
    @map_admin ||= Maps::MapFileAdmin.new
  end


  def api_floorplan_request(params)
    floor = determine_floor_from_request(params)    

    if !floor.nil?
      map_file = Maps::MapFile.map_for_floor(floor)
    else
      map_file = nil
    end

    Maps::MapsApiResponse.new(map_file, @request)
  end


  def api_callnumber_request(params)
    map_file = Maps::MapFile.map_for_callnumber(floor)

    Maps::MapsApiResponse.new(map_file, @request)
  end


  private

    def determine_floor_from_request(params)
      if params[:floor].nil?
        return nil
      end

      Floor.find_floor_from_api_params(params[:floor], params[:library]).first
    end


    def determine_callnumber_from_request(params)
      "asdfadsfdfs"
    end


end