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
        assigns(:monographic_orders).count.should == 2
      end
      
      it "searches start_date, end_date, and selector" do
        orders = [].tap do |array|
          5.times do |i|
            array << FactoryGirl.create(:monographic_order, created_at: i.days.ago, creator: subject.current_user)
          end
        end
        get :index, search: { selector_netid: orders[2].selector.netid, start_date: 2.days.ago, end_date: 2.days.ago}
        assigns(:monographic_orders).count.should == 1
      end

      describe "pagination" do
        before do
          @orders = FactoryGirl.create_list(:monographic_order, 40, creator: subject.current_user)
        end

        it "limits to 25 results" do
          get :index
          assigns(:monographic_orders).count.should == 25
        end

        it "displays results on the second page" do
          get :index, page: 2
          assigns(:monographic_orders).count.should == 15
        end
      end
    end

    describe "#new" do
      it "prepopulates with data from last order" do 
        previous = FactoryGirl.create(:monographic_order, creator: subject.current_user)
        get :new
        response.should be_success
        monographic_order = assigns(:monographic_order)
        monographic_order.should be_a_kind_of MonographicOrder
        monographic_order.selector.should == previous.selector
        monographic_order.fund.should == previous.fund
        monographic_order.fund_other.should == previous.fund_other
        monographic_order.cataloging_location.should == previous.cataloging_location
        monographic_order.cataloging_location_other.should == previous.cataloging_location_other
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
        monographic_order.creator.should == subject.current_user
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
        assigns(:monographic_orders).count.should == 2
      end
    end

    describe "#new" do
      it "prepopulates with data from last order and assigns selector as current selector" do 
        previous = FactoryGirl.create(:monographic_order, creator: subject.current_user)
        get :new
        response.should be_success
        monographic_order = assigns(:monographic_order)
        monographic_order.should be_a_kind_of MonographicOrder
        monographic_order.selector.should == subject.current_user.selector
        monographic_order.fund.should == previous.fund
        monographic_order.fund_other.should == previous.fund_other
        monographic_order.cataloging_location.should == previous.cataloging_location
        monographic_order.cataloging_location_other.should == previous.cataloging_location_other
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
        monographic_order.creator.should == subject.current_user
        monographic_order.selector.should == subject.current_user.selector
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
        assigns(:monographic_orders).count.should == 2
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
