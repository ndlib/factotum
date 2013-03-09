 class Maps::ApiController < ApplicationController

  def index
    floor_map = maps_api.api_floor_map_from_request(params)
    @response = Maps::ApiResponse.new(floor_map, request, params[:call_number])

    respond_to do |format|      
      format.any { render json: @response}      
    end
  end
  
  
  private 

    def maps_api
      @maps_api ||= MapsApi.new
    end
end