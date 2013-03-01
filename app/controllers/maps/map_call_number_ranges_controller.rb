class Maps::MapCallNumberRangesController < ApplicationController
  before_filter :authenticate_user!


  def new 
    @map_call_number_range = call_number_range_admin.call_number_range
  end


  def create
    @map_call_number_range = call_number_range_admin.new_call_number_range(params[:maps_map_call_number_range])

    if !@map_call_number_range.valid?
      render :action => :new
    else
      redirect_to maps_map_file_path(@map_call_number_range.map_file)
    end
  end


  def edit
    @map_call_number_range = call_number_range_admin.call_number_range(params[:id])
  end


  def update
    @map_call_number_range = call_number_range_admin.call_number_range(params[:id])

    call_number_range_admin.update_call_number_range(@map_call_number_range, params[:maps_map_call_number_range])


    if !@map_call_number_range.valid?
      render :action => :edit
    else
      redirect_to maps_map_file_path(@map_call_number_range.map_file)
    end
  end


  def destroy 
    @map_call_number_range = call_number_range_admin.call_number_range(params[:id])
    call_number_range_admin.delete_call_number_range(@map_call_number_range)

    redirect_to maps_map_file_path(call_number_range_admin.map_file)
  end


  protected 

    def maps_api
      @maps_api ||= MapsApi.new(request)
    end


    def map_file
      @map_file ||= maps_api.map_file_admin.map_file(params[:map_file_id])
    end


    def call_number_range_admin
      @call_number_range_admin ||= maps_api.call_number_admin(map_file)
    end
end