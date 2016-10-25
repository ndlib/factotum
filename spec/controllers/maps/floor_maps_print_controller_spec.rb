require 'rails_helper'

describe Maps::FloorMapsPrintController do

  let(:building) { FactoryGirl.create(:building) }

  let(:floor_map) { FactoryGirl.create(:floor_map, building: building)}


  describe "user" do
    before do
      login_user
    end

    it "allows access" do
      get :show, building_id: floor_map.building.id, :id => floor_map.id
      expect(response).to be_success
    end


    describe "#show" do
      it "allows you to access the show page" do
        get :show, building_id: floor_map.building.id, :id => floor_map.id
        expect(assigns(:floor_map)).to eq(floor_map)
      end
    end


    describe "#print" do
      it "renders a pdf file" do
        expect(controller).to receive(:send_file){controller.render :nothing => true}
        expect_any_instance_of(UrlToPdfConverter).to receive(:convert)

        get :print, building_id: floor_map.building.id, :id => floor_map.id
      end
    end
  end
end
