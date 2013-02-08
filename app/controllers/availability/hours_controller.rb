class Availability::HoursController < ApplicationController

  def index
    @service_point ||= Availability::ServicePoint.find(params[:service_point_id])
  end


  def destroy
    @service_point ||= Availability::ServicePoint.find(params[:service_point_id])

    @hours = @service_point.hours.find(params[:id])
    @service_point.destroy()

    redirect_to availability_service_point_hours_path(@service_point)
  end

end