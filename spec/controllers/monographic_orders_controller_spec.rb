require 'spec_helper'

describe MonographicOrdersController do
  describe "user" do
    login_user

    it "allows access" do
      get :index
      response.should be_success
    end

    describe "#index" do
      it "lists orders created by this user" do
        orders = FactoryGirl.create_list(:monographic_order, 2, creator: subject.current_user)
        get :index
        monographic_orders = assigns(:monographic_orders)
        monographic_orders.count.should eq(2)
      end
    end

    describe "#new" do
      it "prepopulates with data from last order" do 
        previous = FactoryGirl.create(:monographic_order, creator: subject.current_user)
        get :new
        monographic_order = assigns(:monographic_order)
        monographic_order.should be_a_kind_of MonographicOrder
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
        monographic_order = assigns(:monographic_order)
        monographic_order.should be_a_kind_of MonographicOrder
        monographic_order.should be_valid
        monographic_order.creator.should eq(subject.current_user)
        response.should redirect_to(monographic_order_path(monographic_order))
      end
    end
  end

  describe "selector" do
    login_selector

    it "allows access" do
      get :index
      response.should be_success
    end

    describe '#index' do
      it "lists orders for this selector" do
        orders = FactoryGirl.create_list(:monographic_order, 2, selector: subject.current_user.selector)
        get :index
        monographic_orders = assigns(:monographic_orders)
        monographic_orders.count.should eq(2)
      end
    end

    describe "#new" do
      it "prepopulates with data from last order and assigns selector as current selector" do 
        previous = FactoryGirl.create(:monographic_order, creator: subject.current_user)
        get :new
        monographic_order = assigns(:monographic_order)
        monographic_order.should be_a_kind_of MonographicOrder
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
        monographic_order = assigns(:monographic_order)
        monographic_order.should be_a_kind_of MonographicOrder
        monographic_order.should be_valid
        monographic_order.creator.should eq(subject.current_user)
        monographic_order.selector.should eq(subject.current_user.selector)
        response.should redirect_to(monographic_order_path(monographic_order))
      end
    end
  end

  describe "selector_admin" do
    login_selector_admin

    it "allows access" do
      get :index
      response.should be_success
    end

    describe '#index' do
      it "lists all orders" do
        orders = FactoryGirl.create_list(:monographic_order, 2)
        get :index
        monographic_orders = assigns(:monographic_orders)
        monographic_orders.count.should eq(2)
      end
    end
  end

  describe "anonymous" do
    it "should prompt to log in" do
      get :index
      response.should be_redirect
    end
  end
end
