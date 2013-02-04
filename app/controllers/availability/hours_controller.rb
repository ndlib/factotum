class Availability::HoursController < ApplicationController

  helper_method :service

  def index
  end

  private
    def service
      @service ||= Availability::ServicePoint.find(params[:service_point_id])
    end

end