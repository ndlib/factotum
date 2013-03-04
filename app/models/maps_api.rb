class MapsApi

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
    building = determine_building_from_request(params)

    return nil if building.nil?

    building.map_for_floor(determine_floor_from_request(params))
  end


  def api_call_number_request(params)
    call_number = Maps::CallNumberRange.search_for_call_number(call_number_from_request(params), sublibrary_from_request(params), collection_from_request(params))

    if call_number.nil?
      nil
    else
      call_number.floor_map
    end
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

      Building.search_for_building(params[:library])
    end


    def call_number_from_request(params)
      params[:call_number]
    end


    def sublibrary_from_request(params)
      params[:sublibrary].nil? ? 'HESB' : params[:sublibrary]
    end


    def collection_from_request(params)
      params[:collection].nil? ? 'GEN' : params[:collection]
    end

end