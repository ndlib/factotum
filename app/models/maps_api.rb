class MapsApi
  attr_reader :files

  def initialize(request)
    @request = request
    @building_fetcher = Building.public_method(:alphabetical)
  end


  def collection_codes
    {'GEN' => 'General'}
  end


  def sublibrary_codes
    {'HESB' => 'Hesburgh'}
  end


  def building(id)
    Building.find(id)
  end


  def buildings
    fetch_buildings
  end


  def list_buildings
    buildings
  end



  def api_floorplan_request(params)
    if !building = determine_building_from_request(params)
      floor_map = nil
    else
      floor_map = Maps::FloorMap.map_for_floor_and_building(determine_floor_from_request(params), building)
    end

    Maps::MapsApiResponse.new(floor_map, @request)
  end


  def api_callnumber_request(params)
    floor_map = Maps::FloorMap.map_for_callnumber(floor)

    Maps::MapsApiResponse.new(floor_map, @request)
  end


  private

    def fetch_buildings
      @building_fetcher.()
    end


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