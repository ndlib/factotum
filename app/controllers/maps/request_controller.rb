class Maps::RequestController < ApplicationController
  before_filter :authenticate_user!


  def new
    @r = Maps::Request.new
    respond_to do |format|
      format.html
    end
  end


  def create
    @r = Maps::Request.new(params[:maps_request])
    @r.user = current_user
    respond_to do |format|
       if @r.valid?
         flash[:notice] = 'Request has been submitted.'
         MapsRequestMailer.maps_request_notify(@r).deliver
         format.html { redirect_to new_maps_request_path }
       else
         format.html { render :action => "new" }
       end
    end
  end

end
