class Availability::RegularHoursController < ApplicationController

  def new
    @hours = service_point.regular_hours.build
  end


  def create
    @hours = service_point.new_hours(params[:availability_regular_hours])

    if !@hours.valid?
      render :action => 'new'
    else
      redirect_to availability_service_points_hours_path(service_point)
    end
  end


  def edit
    @hours = service_point.regular_hours.find(params[:id])
  end


  def update
    @hours = service_point.regular_hours.find(params[:id])
    service_point.update_hours(@hours, params[:availability_regular_hours])

    if !@hours.valid?
      render :action => 'new'
    else
      flash[:notice] = "#{@hours.name} updated"
      redirect_to availability_service_point_hours_path(service_point)
    end
  end


  def destroy
    @hours = service_point.regular_hours.find(param[:id])
    service_point.delete_hours(@hours)

    redirect_to availability_hours_service_point_path(service_point)
  end


  private
  def service_point
    @service_point ||= Availability::ServicePoint.find(params[:service_point_id])
  end

end