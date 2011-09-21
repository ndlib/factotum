class RefworksPasswordResetsController < ApplicationController
  before_filter :check_refworks_password_reset_token, :only => [:confirm_reset, :reset]
  def show
    new
    render :action => :new
  end
  
  def new
    @refworks_password_reset = RefworksPasswordReset.new
  end
  
  def create
    @refworks_password_reset = RefworksPasswordReset.new(params[:refworks_password_reset])
    if @refworks_password_reset.users.blank?
      RefworksUser.cache_recent_users!(2)
    end
    if @refworks_password_reset.save
      session[:refworks_password_reset_id] = @refworks_password_reset.id
      RefworksMailer.password_reset(@refworks_password_reset).deliver
      redirect_to thank_you_refworks_password_reset_path
    else
      render :action => :new
    end
  end
  
  def thank_you
    if session[:refworks_password_reset_id]
      @refworks_password_reset = RefworksPasswordReset.find(session[:refworks_password_reset_id])
    else
      redirect_to :action => :new
    end
  end
  
  def reset
    # check_refworks_password_reset_token sets @refworks_password_reset
  end
  
  def confirm_reset
    # check_refworks_password_reset_token sets @refworks_password_reset
    if @refworks_password_reset.users.count == 1
      @refworks_password_reset.user = @refworks_password_reset.users.first
    else
      params[:refworks_password_reset] ||= {}
      @refworks_password_reset.user = @refworks_password_reset.users.where(:id => params[:refworks_password_reset][:refworks_user_id]).first
      if @refworks_password_reset.user.nil?
        redirect_to reset_refworks_password_reset_path(@refworks_password_reset.token)
        return
      end
    end
    
    browser = RefworksAdminBrowser.new
    @new_password = browser.reset_password_for!(@refworks_password_reset.user)
    @refworks_password_reset.used = true
    @refworks_password_reset.save
  end
  
  private
    def check_refworks_password_reset_token
      @refworks_password_reset = RefworksPasswordReset.available.by_token(params[:token]).first
      if @refworks_password_reset.nil? || @refworks_password_reset.users.blank?
        render :action => :expired
        return false
      end
    end
end
