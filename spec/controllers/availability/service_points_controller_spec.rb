require 'rails_helper'

describe Availability::ServicePointsController do

  let(:service_points) { FactoryGirl.create_list(:service_point, 2) }
  let(:service_point) { FactoryGirl.create(:service_point) }

  describe "user" do
    before do
      login_user
    end

    it "allows access" do
      get :index
      expect(response).to be_success
    end

    describe "#index" do
      it "lists all the service points" do
        service_points

        get :index
        expect(assigns(:service_points).count).to eq(service_points.size)
      end
    end


    describe "#edit" do
      it "allows you to access the edit page" do
        get :edit, id: service_point.id
        expect(response.status).to eq(200)
      end
    end


    describe "#update" do
      it "allows you to update the notification_emails " do
        sp = FactoryGirl.create(:service_point)

        put :update, id: sp.id, availability_service_point: { notification_emails: "jon.hartzler@gmail.com"}

        sp.reload()
        expect(sp.notification_emails).to eq("jon.hartzler@gmail.com")
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

