class Maps::RequestController < ApplicationController
  before_filter :authenticate_user!


  def new
    @r = Maps::Request.new
    respond_to do |format|
      format.html
    end
  end


  def create
    @r = Maps::Request.new(request_params)
    @r.user = current_user
    respond_to do |format|
       if @r.valid?
         flash[:notice] = 'Request has been submitted.'
         MapsRequestMailer.maps_request_notify(@r).deliver_now
         format.html { redirect_to new_maps_request_path }
       else
         format.html { render :action => "new" }
       end
    end
  end

  private

  def request_params
    params.require(:maps_request).permit!
  end

end
