class Maps::MapFilesController < ApplicationController
  before_filter :authenticate_user!

  def index
    @map_files = building.map_files
  end


  def show
    @map_file = building.map_file(params[:id])
  end


  def new
    @map_file = building.new_map_file
  end

  
  def create 
    @map_file = building.new_map_file(params[:maps_map_file])

    if !@map_file.save()
      render :new
    else
      redirect_to maps_building_map_files_path(building)
    end
  end


  def edit
    @map_file = building.map_file(params[:id])
  end


  def update
    @map_file = building.map_file(params[:id])

    if !@map_file.update_attributes(params[:maps_map_file])
      render :edit
    else
      redirect_to maps_building_map_files_path(building)
    end
  end


  def destroy
    @map_file = building.map_file(params[:id])
    @map_file.destroy

    redirect_to maps_building_map_files_path()
  end


  private
    def maps_api
      @maps_api ||= MapsApi.new(request)
    end


    def building
      @building ||= maps_api.building(params[:building_id])
    end
end 