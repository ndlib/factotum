require 'rails_helper'

describe Availability::HoursController do
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
      get :index, :service_point_id => service_point.id
      expect(response).to be_success
    end

    describe "#index" do
      it "gets the service point" do
        get :index, :service_point_id => service_point.id

        expect(assigns(:service_point)).to eq(service_point)
      end
    end

    describe "#destroy" do
      it "destroys the hours" do
        hours = service_point.hours.first
        delete :destroy, service_point_id: service_point.id, id: service_point.hours.first.id

        expect { hours.reload }.to raise_error(ActiveRecord::RecordNotFound)
      end
    end
  end

  describe "anonymous" do
    it "should prompt to log in" do
      get :index, :service_point_id => service_point.id
      expect(response).to be_redirect
    end
  end
end
