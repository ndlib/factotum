class Availability::HoursExceptionsController < ApplicationController

  def new
    @hours = service_point.hours_exceptions.build
  end

  def create

  end

  def edit
    @hours = service_point.hours_exceptions.find(params[:id])
  end

  def update

  end

  def destroy

  end

  private
  def service_point
    @service_point ||= Availability::ServicePoint.find(params[:service_point_id])
  end

end