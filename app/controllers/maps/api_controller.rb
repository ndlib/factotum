 class Maps::ApiController < ApplicationController

  def index
    @response = maps_api.api_floorplan_request(params)

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