 class Maps::ApiController < ApplicationController

  def index
    @response = Maps::MapsApiResponse.new(maps_api.api_floor_map_from_request(params), request)

    respond_to do |format|      
      format.html 
      format.xml { render xml: @response }
      format.json { render json: @response}      
    end
  end
  
  
  private 

    def maps_api
      @maps_api ||= MapsApi.new
    end
end