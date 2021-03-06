class RefworksPasswordResetsController < ApplicationController
  rescue_from Exception, :with => :refworks_error
  before_filter :check_refworks_password_reset_token, :only => [:confirm_reset, :reset]
  def show
    if request.host == 'directory.library.nd.edu'
      redirect_to "/directory"
      return
    end
    
    new
    render :action => :new
  end

  def new
    if request.host == 'directory.library.nd.edu'
      redirect_to "/directory"
      return
    end
    @refworks_password_reset = RefworksPasswordReset.new
  end

  def create
    params[:refworks_password_reset] ||= {}
    @refworks_password_reset = RefworksPasswordReset.new(refworks_params)
    if @refworks_password_reset.users.blank? && params[:refworks_password_reset][:email_or_login].to_s.size >= 3
      RefworksUser.cache_recent_users!(2)
    end
    if @refworks_password_reset.save
      session[:refworks_password_reset_id] = @refworks_password_reset.id
      RefworksMailer.password_reset(@refworks_password_reset).deliver_now
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
    if @refworks_password_reset.users.count == 1
      process_password_reset(@refworks_password_reset, @refworks_password_reset.users.first)
    end
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

    process_password_reset(@refworks_password_reset, @refworks_password_reset.user)
  end

  private
    def refworks_params
      params.require(:refworks_password_reset).permit(:refworks_user_id, :email_or_login, :email, :login,
                                                      :token, :used, :created_at, :updated_at)
    end

    def process_password_reset(reset, user)
      reset.user = user
      reset.used = true
      @new_password = RefworksAdminBrowser.reset_password_for!(reset.user)
      reset.save
      render(:action => 'confirm_reset')
    end

    def check_refworks_password_reset_token
      @refworks_password_reset = RefworksPasswordReset.available.by_token(params[:token]).first
      if @refworks_password_reset.nil? || @refworks_password_reset.users.blank?
        render :action => :expired
        return false
      end
    end

    def refworks_error(exception)
      render :action => 'refworks_error'
      Raven.capture_exception(exception)
    end
end
