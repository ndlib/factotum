
class Availability::JavascriptBuilderController < ApplicationController

  helper_method :current_url

  def index
    @selected_service_points = Availability::ServicePoint.where("code IN(?)", params[:selected_service_points]) || []
  end

  private

  def current_url
    "#{request.protocol}#{request.host_with_port}"
  end


end