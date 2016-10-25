require 'rails_helper'

describe MonographicOrdersController do
  describe "user" do
    before do
      login_user
    end

    it "allows access" do
      get :index
      expect(response).to be_success
    end

    describe "#index" do
      it "lists orders created by this user" do
        orders = FactoryGirl.create_list(:monographic_order, 2, creator: subject.current_user)
        get :index
        expect(assigns(:search).count).to eq(2)
      end

      it "searches start_date, end_date, and selector" do
        orders = 5.times.collect do |i|
          FactoryGirl.create(:monographic_order, created_at: i.days.ago, creator: subject.current_user)
        end
        get :index, search: { selector_netid: orders[2].selector.netid, start_date: 2.days.ago, end_date: 2.days.ago}
        expect(assigns(:search).count).to eq(1)
      end

      it "downloads as csv" do
        get :index, format: "csv"
        expect(response).to be_success
        expect(response.headers['Content-Disposition']).to eq("attachment; filename=\"monographic_order_requests.csv\"")
      end

      describe "pagination" do
        before do
          # create a selector to speed up creation of multiple orders
          selector = FactoryGirl.create(:selector)
          @orders = FactoryGirl.create_list(:monographic_order, 40, creator: subject.current_user, selector: selector)
        end

        it "limits to 25 results" do
          get :index
          expect(assigns(:search).page.count).to eq(25)
        end

        it "displays results on the second page" do
          get :index, page: 2
          expect(assigns(:search).page.count).to eq(15)
        end
      end
    end

    describe "#new" do
      it "prepopulates with data from last order" do
        previous = FactoryGirl.create(:monographic_order, creator: subject.current_user)
        allow(MonographicOrder).to receive_message_chain(:order, :where, :first).and_return(previous)
        get :new
        expect(response).to be_success
        monographic_order = assigns(:monographic_order)
        expect(monographic_order).to be_a_kind_of MonographicOrder
        # monographic_order.selector.should be == previous.selector #TODO harrison - this may have changed UI
        expect(monographic_order.fund).to eq(previous.fund)
        expect(monographic_order.fund_other).to eq(previous.fund_other)
        expect(monographic_order.cataloging_location).to eq(previous.cataloging_location)
        expect(monographic_order.cataloging_location_other).to eq(previous.cataloging_location_other)
      end
    end

    describe "#order_confirmation_environments" do
      it "should deliver in production" do
        expect(subject.send(:order_confirmation_environments)).to be == ['production']
      end
    end

    describe "#create" do
      before do
        allow(subject).to receive(:order_confirmation_environments) { ['test'] }
        @order = FactoryGirl.build(:monographic_order)
      end

      it "should allow new orders to be made" do
        post :create, order: @order.attributes
        expect(response).to be_redirect
        monographic_order = assigns(:monographic_order)
        expect(monographic_order).to be_a_kind_of MonographicOrder
        expect(monographic_order).to be_valid
        expect(monographic_order.creator).to eq(subject.current_user)
        expect(response).to redirect_to(monographic_order_path(monographic_order))
      end

      it "does not send an email to the selector or order assistants outside of production by default" do
        allow(subject).to receive(:order_confirmation_environments).and_call_original
        expect {
          post :create, order: @order.attributes
        }.to change(ActionMailer::Base.deliveries, :size).by(1)
      end

      it "sends an email to the selector, creator, and order assistants" do
        expect {
          post :create, order: @order.attributes
        }.to change(ActionMailer::Base.deliveries, :size).by(3)
      end

      it "doesn't send an email to the selector if they opt out" do
        @order.selector.user.update_attributes!(receive_order_emails: false)
        expect {
          post :create, order: @order.attributes
        }.to change(ActionMailer::Base.deliveries, :size).by(2)
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
      expect(response).to be_success
    end

    describe '#index' do
      it "lists orders for this selector" do
        orders = FactoryGirl.create_list(:monographic_order, 2, selector: subject.current_user.selector)
        get :index
        expect(assigns(:search).count).to eq(2)
      end

      it "searches start_date, end_date, and creator" do
        orders = 5.times.collect do |i|
          FactoryGirl.create(:monographic_order, created_at: i.days.ago, selector: subject.current_user.selector)
        end
        get :index, search: {creator_netid: orders[2].creator.netid, start_date: 2.days.ago, end_date: 2.days.ago}
        expect(assigns(:search).count).to eq(1)
      end
    end

    describe "#new" do
      it "prepopulates with data from last order and assigns selector as current selector" do
        previous = FactoryGirl.create(:monographic_order, creator: subject.current_user)
        get :new
        expect(response).to be_success
        monographic_order = assigns(:monographic_order)
        expect(monographic_order).to be_a_kind_of MonographicOrder
        expect(monographic_order.selector).to eq(subject.current_user.selector)
        expect(monographic_order.fund).to eq(previous.fund)
        expect(monographic_order.fund_other).to eq(previous.fund_other)
        expect(monographic_order.cataloging_location).to eq(previous.cataloging_location)
        expect(monographic_order.cataloging_location_other).to eq(previous.cataloging_location_other)
      end
    end

    describe "#create" do
      it "should allow new orders to be made" do
        record = FactoryGirl.build(:monographic_order)
        post :create, order: record.attributes
        expect(response).to be_redirect
        monographic_order = assigns(:monographic_order)
        expect(monographic_order).to be_a_kind_of MonographicOrder
        expect(monographic_order).to be_valid
        expect(monographic_order.creator).to eq(subject.current_user)
        expect(monographic_order.selector).to eq(subject.current_user.selector)
        expect(response).to redirect_to(monographic_order_path(monographic_order))
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
      expect(response).to be_success
    end

    describe '#index' do
      it "lists all orders" do
        orders = FactoryGirl.create_list(:monographic_order, 2)
        get :index
        expect(assigns(:search).count).to eq(2)
      end

      it "searches start_date, end_date, selector and creator" do
        orders = 5.times.collect do |i|
          FactoryGirl.create(:monographic_order, created_at: i.days.ago)
        end
        get :index, search: {selector_netid: orders[2].selector.netid, creator_netid: orders[2].creator.netid, start_date: 2.days.ago, end_date: 2.days.ago}
        expect(assigns(:search).count).to eq(1)
      end
    end
  end

  describe "anonymous" do
    it "should prompt to log in" do
      get :index
      expect(response).to be_redirect
    end
  end
end
