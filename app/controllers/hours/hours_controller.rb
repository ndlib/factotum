

class Hours::HoursController < ApplicationController

  def index

  end


  private
    def service
      @service ||= Service.find(params[:id])
    end

end