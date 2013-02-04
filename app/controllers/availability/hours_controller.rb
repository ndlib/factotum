class Availability::HoursController < ApplicationController

  helper_method :service

  def index
    service

  end

  def new
    service

  end

  def edit
    service

  end

  private
    def service
      @service ||= Availability::ServicePoint.find(params[:service_point_id])
    end

end