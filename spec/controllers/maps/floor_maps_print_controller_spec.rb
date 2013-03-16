require 'spec_helper'

describe Maps::FloorMapsPrintController do

  let(:building) { FactoryGirl.create(:building) }

  let(:floor_map) { FactoryGirl.create(:floor_map, building: building)}


  describe "user" do
    login_user

    it "allows access" do
      get :show, building_id: floor_map.building.id, :id => floor_map.id
      response.should be_success
    end


    describe "#show" do
      it "allows you to access the show page" do
        get :show, building_id: floor_map.building.id, :id => floor_map.id
        assigns(:floor_map).should == floor_map
      end
    end


    describe "#print" do
      it "renders a pdf file" do
        controller.should_receive(:send_file).and_return{controller.render :nothing => true}
        get :print, building_id: floor_map.building.id, :id => floor_map.id
      end
    end
  end
end
