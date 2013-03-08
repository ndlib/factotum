class Availability::ApiController < ApiController

  def index
    @services = hours_api.api_services_from_request(params)

    respond_to do |format|
      format.any { render json: @services}
    end
  end


  private
    def hours_api
      @hours_api ||= HoursApi.new(self)
    end

end
