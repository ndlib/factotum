class Maps::MapCallNumberRangesController < ApplicationController
  before_filter :authenticate_user!


  def new 
    @map_call_number_range = map_file.new_call_number_range
  end


  def create
    @map_call_number_range = map_file.new_call_number_range(params[:maps_map_call_number_range])

    if !@map_call_number_range.save
      render :action => :new
    else
      redirect_to maps_map_file_path(@map_call_number_range.map_file)
    end
  end


  def edit
    @map_call_number_range = map_file.call_number_range(params[:id])
  end


  def update
    @map_call_number_range = map_file.call_number_range(params[:id])

    if !@map_call_number_range.update_attributes(params[:maps_map_call_number_range])
      render :action => :edit
    else
      redirect_to maps_map_file_path(map_file)
    end
  end


  def destroy 
    @map_call_number_range = map_file.call_number_range(params[:id])
    @map_call_number_range.destroy()

    redirect_to maps_map_file_path(map_file)
  end


  protected 

    def maps_api
      @maps_api ||= MapsApi.new(request)
    end


    def map_file
      @map_file ||= maps_api.file(params[:map_file_id])
    end

end