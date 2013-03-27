class Availability::ServicePointsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @service_points = hours_api.list_service_points
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
