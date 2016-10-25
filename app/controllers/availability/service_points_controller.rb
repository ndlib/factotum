class Availability::ServicePointsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @service_points = hours_api.list_service_points
  end


  def new
    @service_point = Availability::ServicePoint.new
    respond_to do |format|
      format.html
    end
  end


  def create
    @service_point = Availability::ServicePoint.new(service_params)
    respond_to do |format|
      if @service_point.save
  		flash[:success]	= "#{@service_point.name} has been created."
        format.html { redirect_to(availability_service_point_hours_path(@service_point)) }
      else
        format.html { render :action => "new" }
      end
    end
  end


  def edit
    # @service_point = Availability::ServicePoint.find(params[:id])
    @service_point = hours_api.service_point(params[:id]).__getobj__
  end


  def update
  	@service_point = hours_api.service_point(params[:id])

  	if @service_point.update_attributes(service_params)
  		flash[:success]	= "#{@service_point.name} has been updated."
      redirect_to availability_service_point_hours_path(@service_point)
      return
  	else
  		flash.now[:error] = "Unable to update the notifications for #{@service_point.name}"
      render :edit
  	end
  end


  private

    def service_params
      params.require(:availability_service_point).permit(:name, :code, :notification_emails,
                                                         :building_id, :unit_id, :primary_contact_netid,
                                                         :primary_email, :primary_phone)
    end

    def hours_api
      @hours_api ||= HoursApi.new(self)
    end

end
