
class Availability::JavascriptBuilderController < ApplicationController

  helper_method :current_url

  def index
    @selected_service_points = Availability::ServicePoint.where("code IN(?)", params[:selected_service_points]) || []
  end

  private

  def current_url
    if Rails.env.development?
      "#{request.protocol}#{request.host_with_port}"
    elsif Rails.env.production?
      "https://factotum.library.nd.edu/"
    else
      "https://factotumpprd.library.nd.edu/"
    end
  end


end
