class Maps::FloorMapsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @floor_maps = building.list_floor_maps
  end


  def show
    @floor_map = building.floor_map(params[:id])
  end


  def new
    @floor_map = building.new_floor_map
  end

  
  def create 
    @floor_map = building.new_floor_map(params[:maps_floor_map])

    if !@floor_map.save()
      render :new
    else
      redirect_to maps_building_floor_maps_path(building)
    end
  end


  def edit
    @floor_map = building.floor_map(params[:id])
  end


  def update
    @floor_map = building.floor_map(params[:id])

    if !@floor_map.update_attributes(params[:maps_floor_map])
      render :edit
    else
      redirect_to maps_building_floor_maps_path(building)
    end
  end


  def destroy
    @floor_map = building.floor_map(params[:id])
    @floor_map.destroy

    redirect_to maps_building_floor_maps_path()
  end


  private
    def maps_api
      @maps_api ||= MapsApi.new
    end


    def building
      @building ||= maps_api.building(params[:building_id])
    end
end 