class Hours::HoursController < ApplicationController

  helper_method :service

  def index
  end

  private
    def service
      @service ||= Hours::ServicePoint.find(params[:service_id])
    end

end