require 'spec_helper'

describe MonographicOrdersController do
  describe "user" do
    login_user

    it "should have a functioning new page" do
      get 'new'
      response.should be_success
    end
    
    it "should allow new orders to be made" do
      record = FactoryGirl.build(:monographic_order)
      post 'create', :order => record.attributes
      response.should be_redirect
      monographic_order = assigns(:monographic_order)
      monographic_order.should be_a_kind_of MonographicOrder
      monographic_order.should be_valid
      response.should redirect_to(success_monographic_orders_path())
    end
  end
end
