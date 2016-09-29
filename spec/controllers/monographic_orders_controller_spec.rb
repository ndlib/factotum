require 'rails_helper'

describe MonographicOrdersController do
  describe "user" do
    before do
      login_user
    end

    it "allows access" do
      get :index
      response.should be_success
    end

    describe "#index" do
      it "lists orders created by this user" do
        orders = FactoryGirl.create_list(:monographic_order, 2, creator: subject.current_user)
        get :index
        assigns(:search).count.should be == 2
      end

      it "searches start_date, end_date, and selector" do
        orders = 5.times.collect do |i|
          FactoryGirl.create(:monographic_order, created_at: i.days.ago, creator: subject.current_user)
        end
        get :index, search: { selector_netid: orders[2].selector.netid, start_date: 2.days.ago, end_date: 2.days.ago}
        assigns(:search).count.should be == 1
      end

      it "downloads as csv" do
        get :index, format: "csv"
        response.should be_success
        response.headers['Content-Disposition'].should == "attachment; filename=\"monographic_order_requests.csv\""
      end

      describe "pagination" do
        before do
          # create a selector to speed up creation of multiple orders
          selector = FactoryGirl.create(:selector)
          @orders = FactoryGirl.create_list(:monographic_order, 40, creator: subject.current_user, selector: selector)
        end

        it "limits to 25 results" do
          get :index
          assigns(:search).page.count.should be == 25
        end

        it "displays results on the second page" do
          get :index, page: 2
          assigns(:search).page.count.should be == 15
        end
      end
    end

    describe "#new" do
      it "prepopulates with data from last order" do
        previous = FactoryGirl.create(:monographic_order, creator: subject.current_user)
        MonographicOrder.stub_chain(:order, :where, :first).and_return(previous)
        get :new
        response.should be_success
        monographic_order = assigns(:monographic_order)
        monographic_order.should be_a_kind_of MonographicOrder
        # monographic_order.selector.should be == previous.selector #TODO harrison - this may have changed UI
        monographic_order.fund.should be == previous.fund
        monographic_order.fund_other.should be == previous.fund_other
        monographic_order.cataloging_location.should be == previous.cataloging_location
        monographic_order.cataloging_location_other.should be == previous.cataloging_location_other
      end
    end

    describe "#order_confirmation_environments" do
      it "should deliver in production" do
        expect(subject.send(:order_confirmation_environments)).to be == ['production']
      end
    end

    describe "#create" do
      before do
        subject.stub(:order_confirmation_environments).and_return { ['test'] }
        @order = FactoryGirl.build(:monographic_order)
      end

      it "should allow new orders to be made" do
        post :create, order: @order.attributes
        response.should be_redirect
        monographic_order = assigns(:monographic_order)
        monographic_order.should be_a_kind_of MonographicOrder
        monographic_order.should be_valid
        monographic_order.creator.should be == subject.current_user
        response.should redirect_to(monographic_order_path(monographic_order))
      end

      it "does not send an email to the selector or order assistants outside of production by default" do
        subject.unstub(:order_confirmation_environments)
        lambda {
          post :create, order: @order.attributes
        }.should change(ActionMailer::Base.deliveries, :size).by(1)
      end

      it "sends an email to the selector, creator, and order assistants" do
        lambda {
          post :create, order: @order.attributes
        }.should change(ActionMailer::Base.deliveries, :size).by(3)
      end

      it "doesn't send an email to the selector if they opt out" do
        @order.selector.user.update_attributes!(receive_order_emails: false)
        lambda {
          post :create, order: @order.attributes
        }.should change(ActionMailer::Base.deliveries, :size).by(2)
      end
    end
  end

  describe "selector" do
    before do
      selector = FactoryGirl.create(:selector)
      login_user(selector.user)
    end

    it "allows access" do
      get :index
      response.should be_success
    end

    describe '#index' do
      it "lists orders for this selector" do
        orders = FactoryGirl.create_list(:monographic_order, 2, selector: subject.current_user.selector)
        get :index
        assigns(:search).count.should be == 2
      end

      it "searches start_date, end_date, and creator" do
        orders = 5.times.collect do |i|
          FactoryGirl.create(:monographic_order, created_at: i.days.ago, selector: subject.current_user.selector)
        end
        get :index, search: {creator_netid: orders[2].creator.netid, start_date: 2.days.ago, end_date: 2.days.ago}
        assigns(:search).count.should be == 1
      end
    end

    describe "#new" do
      it "prepopulates with data from last order and assigns selector as current selector" do
        previous = FactoryGirl.create(:monographic_order, creator: subject.current_user)
        get :new
        response.should be_success
        monographic_order = assigns(:monographic_order)
        monographic_order.should be_a_kind_of MonographicOrder
        monographic_order.selector.should be == subject.current_user.selector
        monographic_order.fund.should be == previous.fund
        monographic_order.fund_other.should be == previous.fund_other
        monographic_order.cataloging_location.should be == previous.cataloging_location
        monographic_order.cataloging_location_other.should be == previous.cataloging_location_other
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
        monographic_order.creator.should be == subject.current_user
        monographic_order.selector.should be == subject.current_user.selector
        response.should redirect_to(monographic_order_path(monographic_order))
      end
    end
  end

  describe "selector_admin" do
    before do
      selector = FactoryGirl.create(:selector_admin)
      login_user(selector.user)
    end

    it "allows access" do
      get :index
      response.should be_success
    end

    describe '#index' do
      it "lists all orders" do
        orders = FactoryGirl.create_list(:monographic_order, 2)
        get :index
        assigns(:search).count.should be == 2
      end

      it "searches start_date, end_date, selector and creator" do
        orders = 5.times.collect do |i|
          FactoryGirl.create(:monographic_order, created_at: i.days.ago)
        end
        get :index, search: {selector_netid: orders[2].selector.netid, creator_netid: orders[2].creator.netid, start_date: 2.days.ago, end_date: 2.days.ago}
        assigns(:search).count.should be == 1
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
