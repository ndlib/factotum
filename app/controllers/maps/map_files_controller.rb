class Maps::MapFilesController < ApplicationController
  before_filter :authenticate_user!

  def index
    @map_files = map_file_admin.map_files
  end


  def show
    @map_file = map_file_admin.map_file(params[:id])
  end


  def new
    @map_file = map_file_admin.map_file
  end

  
  def create 
    @map_file = map_file_admin.new_map_file(params[:maps_map_file])

    if !@map_file.valid?
      render :action => :new
    else
      redirect_to maps_map_files_path()
    end
  end


  def edit
    @map_file = map_file_admin.map_file(params[:id])
  end


  def update
    @map_file = map_file_admin.map_file(params[:id])
    map_file_admin.update_map_file(@map_file, params[:maps_map_file])


    if !@map_file.valid?
      render :action => :edit
    else
      redirect_to maps_map_files_path()
    end
  end


  def destroy
    @map_file = map_file_admin.map_file(params[:id])
    map_file_admin.delete_map_file(@map_file)

    redirect_to maps_map_files_path()
  end


  private
    def map_file_admin
      @map_file_admin ||= MapsApi.new(request).map_file_admin
    end
end 