require 'spec_helper'

describe Availability::RegularHoursController do
  let(:service_point) {
    FactoryGirl.create(:service_point, :regular_hours => [ current_hours] )
  }

  let(:current_hours) {
    FactoryGirl.create(:regular_hours)
  }

  describe "user" do
    before do
      login_user
    end

    it "allows access" do
      get :new, :service_point_id => service_point.id
      response.should be_success
    end

    describe "#new" do
      it "sends the service point" do
        get :new, :service_point_id => service_point.id

        assigns(:service_point).should == service_point
        assigns(:hours).new_record?.should be_true
      end

      it "allows you to clone an existing hours " do
        get :new, service_point_id: service_point.id, clone_id: service_point.regular_hours.first.id

        assigns(:service_point).should == service_point
        assigns(:hours).name.should == service_point.regular_hours.first.name
        assigns(:hours).new_record?.should be_true
      end
    end

    describe "#create" do
      let(:create_fields) { { name: "Name", start_date: 1.month.ago, end_date: 1.month.from_now, hours: { :start_day => ['monday'], :end_day => ['sunday'], :hours => [ 'Open 24 Hours' ] } } }

      it "creates new hours " do
        put :create, service_point_id: service_point.id, availability_regular_hours: create_fields
        assigns(:hours).name.should == "Name"
      end

      it "redirects to the hours controller on success" do
        put :create, service_point_id: service_point.id, availability_regular_hours: create_fields
        response.should be_redirect
      end

      it "rerenders the new action when validation fails" do
        put :create, service_point_id: service_point.id, availability_regular_hours: {}

        response.should be_success
      end
    end


    describe "#edit" do
      it "sends the hours" do
        hours = service_point.regular_hours.first
        get :edit, service_point_id: service_point.id, id: hours.id

        assigns(:service_point).should == service_point
        assigns(:hours).should == hours
      end
    end

    describe "#update" do
      let(:update_fields) { { name: "new Name", start_date: 1.month.ago, end_date: 1.month.from_now, hours: {:start_day => ['monday'], :end_day => ['sunday'], :hours => [ 'Open 24 Hours' ] } } }

      it "updates new hours " do
        post :update, service_point_id: service_point.id, id: service_point.regular_hours.first.id, availability_regular_hours: update_fields
        assigns(:hours).name.should == "new Name"
        assigns(:hours).valid?.should be_true
      end

      it "redirects to the hours controller on success" do
        post :update, service_point_id: service_point.id, id: service_point.regular_hours.first.id, availability_regular_hours: update_fields
        response.should be_redirect
      end

      it "rerenders the new action when validation fails" do
        post :update, service_point_id: service_point.id, id: service_point.regular_hours.first.id, availability_regular_hours: { name: ""}
        response.should be_success
      end

    end
  end

  describe "anonymous" do
    it "should prompt to log in" do
      get :new, :service_point_id => service_point.id
      response.should be_redirect
    end
  end
end
