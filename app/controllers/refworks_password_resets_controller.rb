class RefworksPasswordResetsController < ApplicationController
  def show
    new
    render :action => :new
  end
  
  def new
    @refworks_password_reset = RefworksPasswordReset.new
  end
  
  def create
    @refworks_password_reset = RefworksPasswordReset.new(params[:refworks_password_reset])
    if @refworks_password_reset.save
      session[:refworks_password_reset_id] = @refworks_password_reset.id
      RefworksMailer.password_reset(@refworks_password_reset).deliver
      redirect_to thank_you_refworks_password_reset_path
    else
      render :action => :new
    end
  end
  
  def thank_you
    
  end
  
  def reset
    
  end
end
