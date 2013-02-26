require 'spec_helper'

describe MapsApi do

  let(:map_api) { MapsApi.new }
  let(:floor) { FactoryGirl.create(:floor)}  
  let(:library) { floor.library }

  describe "#map_file_admin" do
    it "returns a map file admin " do
      map_api.map_file_admin.is_a?(Maps::MapFileAdmin)
    end
  end

  describe "#api_floorplan_request" do
      
    it "takes the params form the original api" do
      params = { floor: floor.name, building: floor.library.code } 
      map_api.api_floorplan_request(params).should_not be_nil
    end

    it " returns nil if the floor does not exist "


    it "returns a MapsApiResponse " do
      params = { floor: floor.name, building: floor.library.code } 
      map_api.api_floorplan_request(params).is_a?(Maps::MapsApiResponse)
    end

  end
end