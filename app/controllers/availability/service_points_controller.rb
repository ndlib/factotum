class Availability::ServicePointsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @service_points = Availability::ServicePoint.all
    HoursNotificationMailer.send_all_notifictions

  end


  def update
  	@service_point = Availability::ServicePoint.find(params[:id])

  	if @service_point.update_attributes(params[:availability_service_point]) 
  		flash[:success]	= "#{@service_point.name} has been updated."
  	else
  		flash.now[:error] = "Unable to update the notifications for #{@service_point.name}"  		
  	end

  	redirect_to availability_service_points_path
  end

end