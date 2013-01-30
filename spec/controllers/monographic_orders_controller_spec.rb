require 'spec_helper'

describe MonographicOrdersController do
  describe "user" do
    login_user

    describe "#new" do
      it "allows access" do
        get :new
        response.should be_success
        assigns(:monographic_order).should be_a_kind_of MonographicOrder
      end

      it "prepopulates with data from last order" do 
        previous = FactoryGirl.create(:monographic_order, creator: subject.current_user)
        get :new
        monographic_order = assigns(:monographic_order)
        monographic_order.selector.should eq(previous.selector)
        monographic_order.fund.should eq(previous.fund)
        monographic_order.fund_other.should eq(previous.fund_other)
        monographic_order.cataloging_location.should eq(previous.cataloging_location)
        monographic_order.cataloging_location_other.should eq(previous.cataloging_location_other)
      end
    end
    
    describe "#create" do
      it "should allow new orders to be made" do
        record = FactoryGirl.build(:monographic_order)
        post :create, order: record.attributes
        response.should be_redirect
        response.should redirect_to(success_monographic_orders_path())
        monographic_order = assigns(:monographic_order)
        monographic_order.should be_a_kind_of MonographicOrder
        monographic_order.should be_valid
        monographic_order.creator.should eq(subject.current_user)
      end
    end
  end

  describe "selector" do
    login_selector

    describe "#new" do
      it "allows access" do
        get :new
        response.should be_success
        assigns(:monographic_order).should be_a_kind_of MonographicOrder
      end

      it "prepopulates with data from last order and assigns selector as current selector" do 
        previous = FactoryGirl.create(:monographic_order, creator: subject.current_user)
        get :new
        monographic_order = assigns(:monographic_order)
        monographic_order.selector.should eq(subject.current_user.selector)
        monographic_order.fund.should eq(previous.fund)
        monographic_order.fund_other.should eq(previous.fund_other)
        monographic_order.cataloging_location.should eq(previous.cataloging_location)
        monographic_order.cataloging_location_other.should eq(previous.cataloging_location_other)
      end
    end
    
    describe "#create" do
      it "should allow new orders to be made" do
        record = FactoryGirl.build(:monographic_order)
        post :create, order: record.attributes
        response.should be_redirect
        response.should redirect_to(success_monographic_orders_path())
        monographic_order = assigns(:monographic_order)
        monographic_order.should be_a_kind_of MonographicOrder
        monographic_order.should be_valid
        monographic_order.creator.should eq(subject.current_user)
        monographic_order.selector.should eq(subject.current_user.selector)
      end
    end
  end
end
