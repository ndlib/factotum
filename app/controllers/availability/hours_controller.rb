class Availability::HoursController < ApplicationController

  helper_method :service_point

  def index
    service_point

  end

  def new
    service_point

    @hours = Availability::RegularHours.new
  end


  def create
    @hours = service_point.new_hours(params[:availability_regular_hours])

    if !@hours.valid?
      render :action => 'new'
    else
      redirect_to availability_hours_service_point_path(service_point)
    end
  end


  def edit
    service_point
    @hours = Availability::RegularHours.find(params[:id])
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