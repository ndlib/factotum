class Maps::CallNumberRangesController < ApplicationController
  before_filter :authenticate_user!

  def new 
    @call_number_range = floor_map.new_call_number_range
  end


  def create
    @call_number_range = floor_map.new_call_number_range(params[:maps_call_number_range])

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

    if !@call_number_range.update_attributes(params[:maps_call_number_range])
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

    def maps_api
      @maps_api ||= MapsApi.new(request)
    end


    def building
      @building ||= maps_api.building(params[:building_id])
    end


    def floor_map
      @floor_map ||= building.floor_map(params[:floor_map_id])
    end

end