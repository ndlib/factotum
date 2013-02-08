class Availability::HoursController < ApplicationController

  helper_method :service_point

  def index
    @service_point ||= Availability::ServicePoint.find(params[:service_point_id])
  end


  def destroy

  end


end