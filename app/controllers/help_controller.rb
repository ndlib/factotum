class HelpController < ApplicationController

  def new
    @help_request = Help::Request.new
    respond_to do |format|
      format.html
    end
  end


  def create
    @help_request = Help::Request.new(params[:help_request])
    @help_request.service_point_id = Availability::ServicePoint.where(:code => params[:active_branch_code]).first.id
    respond_to do |format|
      if @help_request.valid? && verify_recaptcha(:model => @help_request, :message => "Please enter the text correctly in the box")
  		flash[:success]	= "Help request received."
        HelpRequestMailer.send_for_help(@help_request).deliver
        format.html { redirect_to new_help_requests_path(:active_branch_code => params[:active_branch_code]) }
      else
        format.html { render :action => "new" }
      end
    end
  end

end
