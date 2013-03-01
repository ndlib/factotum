class MapsApi

  def initialize(request)
    @request = request
  end


  def map_file_admin
    @map_admin ||= Maps::MapFileAdmin.new
  end


  def call_number_admin(map_file)
    @call_number_admin ||= Maps::MapsCallNumberAdmin.new(map_file)
  end


  def api_floorplan_request(params)
    if !building = determine_building_from_request(params)
      map_file = nil
    else
      map_file = Maps::MapFile.map_for_floor_and_building(determine_floor_from_request(params), building)
    end

    Maps::MapsApiResponse.new(map_file, @request)
  end


  def api_callnumber_request(params)
    map_file = Maps::MapFile.map_for_callnumber(floor)

    Maps::MapsApiResponse.new(map_file, @request)
  end


  private

    def determine_floor_from_request(params)
      params[:floor]
    end
    

    def determine_building_from_request(params)
      if params[:library].nil?
        return Building.hesburgh_library
      end

      # Floor.find_floor_from_api_params(params[:floor], params[:library]).first
      Building.search_for_building(params[:library])
    end


    def determine_callnumber_from_request(params)
      "asdfadsfdfs"
    end


end