class Availability::HoursController < ApplicationController
  before_filter :authenticate_user!

  def index
    @service_point = hours_api.service_point(params[:service_point_id])
  end


  def destroy
    @service_point = hours_api.service_point(params[:service_point_id])
    @hours = @service_point.hours.find(params[:id])

    @service_point.delete_hours(@hours)

    redirect_to availability_service_point_hours_path(@service_point)
  end


  private

    def hours_api
      @hours_api ||= HoursApi.new(self)
    end

end
