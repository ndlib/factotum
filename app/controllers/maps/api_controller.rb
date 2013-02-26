class Maps::ApiController < ApiController

  def index
    @response = maps_api.api_floorplan_request(params)

    respond_to do |format|      
      format.html 
      format.xml { render xml: @response }
      format.json { render json: @response}      
      format.any { render_404 }
    end
  end

  private 
    def maps_api
      @maps_api ||= MapsApi.new
    end
end