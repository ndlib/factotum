require 'spec_helper'

describe Availability::ServicePointsPrintController do

  let(:service_points) { FactoryGirl.create_list(:service_point, 2) }
  let(:service_point) { FactoryGirl.create(:service_point) }

  describe "user" do
    login_user

    it "allows access" do
      get :show, id: service_point.id
      response.should be_success
    end

    describe "#show" do
      it "allows you to access the show page" do
        get :show, id: service_point.id
        assigns(:service_point).should == service_point
      end
    end


    describe "#print" do
      it "renders a pdf file" do
        controller.should_receive(:send_file).and_return{controller.render :nothing => true}
        get :print, id: service_point.id
      end
    end
  end
end
