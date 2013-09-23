class PurchaseRequestsController < ApplicationController
  before_filter :authenticate_user!

  def new
    @purchase_request = PurchaseRequest.new
    @purchase_request.requester_name = current_user.display_name
    @purchase_request.requester_email = current_user.email
    @purchase_request.requester_phone = current_user.phone
    @purchase_request.requester_department = current_user.department
    @purchase_request.requester_affiliation = current_user.affiliation
  end

  def create
    @purchase_request = PurchaseRequest.new
  end

  def show
    redirect_to new_purchase_request_path
  end
end
