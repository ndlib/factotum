class PurchaseRequestsController < ApplicationController
  before_filter :authenticate_user!, except: [:show]

  def new
    @purchase_request = PurchaseRequest.new
    @purchase_request.requester_name = current_user.display_name
    @purchase_request.requester_email = current_user.email
    @purchase_request.requester_phone = current_user.phone
    @purchase_request.requester_address = current_user.address
    @purchase_request.requester_department = current_user.department
    @purchase_request.requester_affiliation = current_user.affiliation
  end

  def create
    @purchase_request = PurchaseRequest.new(params[:purchase_request])
    @purchase_request.requester_netid = current_user.netid
    if @purchase_request.save
      session[:purchase_request_id] = @purchase_request.id
      PurchaseRequestsMailer.submission(@purchase_request).deliver
      PurchaseRequestsMailer.confirmation(@purchase_request).deliver
      redirect_to purchase_request_path
    else
      render action: :new
    end
  end

  def show
    if session[:purchase_request_id]
      @purchase_request = PurchaseRequest.find(session[:purchase_request_id])
      flash[:success] = "Your purchase recommendation has been submitted.  You will receive a copy of your request via email."
    else
      if current_user
        redirect_to new_purchase_request_path
      else
        render action: "not_signed_in"
      end
    end
  end
end
