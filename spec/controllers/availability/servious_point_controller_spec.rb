require 'spec_helper'

describe Availability::ServicePointsController do
  describe "user" do
    login_user

    it "allows access" do
      get :index
      response.should be_success
    end

    describe "#index" do
      it "lists all the service points" do
        FactoryGirl.create_list(:service_point, 2)
        get :index
        assigns(:service_points).count.should == 2
      end
    end


    describe "#update" do
      it "allows you to update the notification_emails " do
        sp = FactoryGirl.create(:service_point)

        put :update, id: sp.id, availability_service_point: { notification_emails: "jon.hartzler@gmail.com"}
        
        sp.reload()
        sp.notification_emails.should == "jon.hartzler@gmail.com"
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

