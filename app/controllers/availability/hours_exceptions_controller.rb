class Availability::HoursExceptionsController < ApplicationController

  def new
    @hours = clone_or_new_hours
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

  def clone_or_new_hours
    if params[:clone_id].present?
      service_point.hours_exceptions.find(params[:clone_id]).clone
    else
      service_point.hours_exceptions.build
    end
  end

end