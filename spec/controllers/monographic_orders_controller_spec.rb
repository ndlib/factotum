require 'spec_helper'

describe MonographicOrdersController do
  it "should have a functioning new page" do
    get 'new'
    response.should be_success
  end
  
  it "should allow new orders to be made" do
    record = FactoryGirl.build(:monographic_order)
    post 'create', :order => record.attributes
    response.should be_redirect
    new_record = assigns(:monographic_order)
    response.should redirect_to(success_monographic_orders_path())
  end
end
