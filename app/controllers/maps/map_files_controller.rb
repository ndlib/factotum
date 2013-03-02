class Maps::MapFilesController < ApplicationController
  before_filter :authenticate_user!

  def index
    @map_files = maps_api.files
  end


  def show
    @map_file = maps_api.file(params[:id])
  end


  def new
    @map_file = maps_api.new_file
  end

  
  def create 
    @map_file = maps_api.new_file(params[:maps_map_file])

    if !@map_file.save()
      render :new
    else
      redirect_to maps_map_files_path()
    end
  end


  def edit
    @map_file = maps_api.file(params[:id])
  end


  def update
    @map_file = maps_api.file(params[:id])

    if !@map_file.update_attributes(params[:maps_map_file])
      render :edit
    else
      redirect_to maps_map_files_path()
    end
  end


  def destroy
    @map_file = maps_api.file(params[:id])
    @map_file.destroy

    redirect_to maps_map_files_path()
  end


  private
    def maps_api
      @maps_api ||= MapsApi.new(request)
    end

end 