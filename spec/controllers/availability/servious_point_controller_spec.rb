require 'spec_helper'

describe Availability::ServicePointsController do

  let(:service_points) { FactoryGirl.create_list(:service_point, 2) }
  let(:service_point) { FactoryGirl.create(:service_point) }

  describe "user" do
    login_user

    it "allows access" do
      get :index
      response.should be_success
    end

    describe "#index" do
      it "lists all the service points" do
        service_points

        get :index
        assigns(:service_points).count.should == service_points.size
      end
    end

    describe "#show" do
      it "allows you to access the show page" do
        get :show, id: service_point.id
        response.status.should == 200
      end
    end


    describe "#edit" do
      it "allows you to access the edit page" do
        get :edit, id: service_point.id
        response.status.should == 200
      end
    end


    describe "#print" do
      it "renders a pdf file" do
        controller.should_receive(:send_file).and_return{controller.render :nothing => true}
        get :print, id: service_point.id
      end
    end


    describe "#show" do
      it "gets a service point" do
        hours = FactoryGirl.create(:regular_hours)
        service_point = hours.service_point
        binding.pry
        get :show, :id => service_point.id

        assigns(:service_point)
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

