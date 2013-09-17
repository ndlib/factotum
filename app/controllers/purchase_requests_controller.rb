class PurchaseRequestsController < ApplicationController
  def new
    @purchase_request = PurchaseRequest.new
  end

  def create
    @purchase_request = PurchaseRequest.new
  end

  def show
    redirect_to new_purchase_request_path
  end
end
