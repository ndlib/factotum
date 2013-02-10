require 'spec_helper'

describe Availability::HoursController do
  let(:service_point) {
    FactoryGirl.create(:service_point, :regular_hours => [ current_hours] )
  }

  let(:current_hours) {
    FactoryGirl.create(:regular_hours)
  }

  describe "user" do
    login_user

    it "allows access" do
      get :index, :service_point_id => service_point.id
      response.should be_success
    end

    describe "#index" do
      it "gets the service point" do
        get :index, :service_point_id => service_point.id

        assigns(:service_point).should == service_point
      end
    end

    describe "#destroy" do
      it "destroys the hours" do
        hours = service_point.hours.first
        delete :destroy, service_point_id: service_point.id, id: service_point.hours.first.id

        expect { hours.reload }.to raise_error
      end
    end
  end

  describe "anonymous" do
    it "should prompt to log in" do
      get :index, :service_point_id => service_point.id
      response.should be_redirect
    end
  end
end
