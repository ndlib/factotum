class Maps::CallNumberRangesController < ApplicationController
  before_filter :authenticate_user!
  helper_method :maps_api

  def new
    @call_number_range = floor_map.new_call_number_range
  end


  def create
    @call_number_range = floor_map.new_call_number_range(call_number_params)

    if !@call_number_range.save
      render :action => :new
    else
      redirect_to maps_building_floor_map_path(floor_map.building, floor_map)
    end
  end


  def edit
    @call_number_range = floor_map.call_number_range(params[:id])
  end


  def update
    @call_number_range = floor_map.call_number_range(params[:id])

    if !@call_number_range.update_attributes(call_number_params)
      render :action => :edit
    else
      redirect_to maps_building_floor_map_path(floor_map.building, floor_map)
    end
  end


  def destroy
    @call_number_range = floor_map.call_number_range(params[:id])
    @call_number_range.destroy()

    redirect_to maps_building_floor_map_path(floor_map.building, floor_map)
  end


  protected

    def call_number_params
      params.require(:maps_call_number_range).permit(:collection_code, :sublibrary_code,
                                                     :begin_call_number, :end_call_number,
                                                     :floor_map_id)
    end

    def maps_api
      @maps_api ||= MapsApi.new
    end


    def building
      @building ||= maps_api.building(params[:building_id])
    end


    def floor_map
      @floor_map ||= building.floor_map(params[:floor_map_id])
    end

end