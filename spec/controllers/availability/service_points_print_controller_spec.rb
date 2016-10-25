require 'rails_helper'

describe Availability::ServicePointsPrintController do

  let(:service_points) { FactoryGirl.create_list(:service_point, 2) }
  let(:service_point) { FactoryGirl.create(:service_point) }

  describe "user" do
    before do
      login_user
    end

    it "allows access" do
      get :show, id: service_point.id
      expect(response).to be_success
    end

    describe "#show" do
      it "allows you to access the show page" do
        get :show, id: service_point.id
        expect(assigns(:service_point)).to eq(service_point)
      end
    end


    describe "#print" do
      it "renders a pdf file" do
        expect(controller).to receive(:send_file){controller.render :nothing => true}
        expect_any_instance_of(UrlToPdfConverter).to receive(:convert)

        get :print, id: service_point.id
      end
    end
  end
end
