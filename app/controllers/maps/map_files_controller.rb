class Maps::MapFilesController < ApplicationController
  before_filter :authenticate_user!

  def index
    @map_files = map_api.map_files
  end

  def show
    @map_file = map_api.map_file(params[:id])
  end

  def new
    @map_file = map_api.map_file
  end

  
  def create 
    @map_file = map_api.new_map_file(params[:maps_map_file])

    if !@map_file.valid?
      render :action => :new
    else
      redirect_to maps_map_files_path()
    end
  end


  def edit
  end


  def update
  end


  def destroy
  end


  private
    def map_api
      MapsApi.new
    end
end 