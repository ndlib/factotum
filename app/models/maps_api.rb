class MapsApi
  attr_reader :files

  def initialize(request)
    @request = request
    @file_fetcher = Maps::MapFile.public_method(:all)
    @building_fetcher = Building.public_method(:all)
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


  def files
    fetch_files
  end


  def file(id)
    Maps::MapFile.find(id)
  end


  def add_file(file)
    file.save
  end


  def new_file(*args)
    file_source.call(*args)
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
    def fetch_files
      @file_fetcher.()
    end


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


    def file_source
      @file_source ||= Maps::MapFile.public_method(:new)
    end
end