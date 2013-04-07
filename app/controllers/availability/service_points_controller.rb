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
    @service_point = Availability::ServicePoint.new(params[:availability_service_point])
    respond_to do |format|
      if @service_point.save
  		flash[:success]	= "#{@service_point.name} has been created."
        format.html { redirect_to(availability_service_points_path) }
      else
        format.html { render :action => "new" }
      end
    end
  end


  def edit
    @service_point = hours_api.service_point(params[:id])
  end


  def update
  	@service_point = hours_api.service_point(params[:id])

  	if @service_point.update_attributes(params[:availability_service_point])
  		flash[:success]	= "#{@service_point.name} has been updated."
  	else
  		flash.now[:error] = "Unable to update the notifications for #{@service_point.name}"
  	end

  	redirect_to availability_service_points_path
  end


  private

    def hours_api
      @hours_api ||= HoursApi.new(self)
    end

end
