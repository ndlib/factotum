class Availability::HoursExceptionsController < ApplicationController

  def new
    @hours = clone_or_new_hours
  end

  def create
    @hours = service_point.new_hours_exception(params[:availability_hours_exception])

    if !@hours.valid?
      flash.now[:error] = 'Unable to create a new hours exception.  Please correct the errors in the form and resubmit.'
      render :action => 'new'
    else
      flash[:success] = "#{@hours.name} created"
      redirect_to availability_service_point_hours_path(service_point)
    end
  end

  def edit
    @hours = service_point.hours_exceptions.find(params[:id])
  end


  def update
    @hours = service_point.hours_exceptions.find(params[:id])
    service_point.update_hours_exception(@hours, params[:availability_hours_exception])

    if !@hours.valid?
      flash.now[:error] = 'Unable to update #{@hours.name}.  Please correct the errors in the form and resubmit.'
      render :action => 'new'
    else
      flash[:success] = "#{@hours.name} updated"
      redirect_to availability_service_point_hours_path(service_point)
    end
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