require 'rails_helper'

describe MapsApi do

  let(:map_api) { MapsApi.new }
  let(:floor_map) { FactoryGirl.create(:floor_map) }
  let(:floor_maps) { FactoryGirl.create_list(:floor_map, 2)}

  let(:call_number_range) { FactoryGirl.create(:call_number_range) }

  let(:building) { floor_map.building }
  let(:buildings) { FactoryGirl.create_list(:building, 2) }

  let(:hesburgh_building) { FactoryGirl.create(:building, search_code: 'hesburgh')}
  let(:hesburgh_floor_map) { FactoryGirl.create(:floor_map, building: hesburgh_building) }


  describe :buildings do
    it "returns a list of all the buildings" do
      buildings

      map_api.buildings.size.should== buildings.size
    end

    it "returns an alphabetical list" do
      b2 = FactoryGirl.create(:building, name: "d")
      b1 = FactoryGirl.create(:building, name: "a")
      res = [b1, b2]

      map_api.buildings.should == res
    end
  end


  describe :building do

    it "returns the building for specified id " do
      building

      map_api.building(building.id).should == building
    end

  end


  describe "#api_floor_map_from_request" do
    context "with floor parameters" do
      it "takes the params form the original api" do
        params = { floor: floor_map.search_code, library: building.search_code }
        map_api.api_floor_map_from_request(params).should == floor_map
      end


      it "defaults to hesburgh building if no library is passed in " do
        params = { floor: hesburgh_floor_map.search_code }
        map_api.api_floor_map_from_request(params).should == hesburgh_floor_map
      end

      it "returns a nil response if no building is passed in and the map is not part of hesburgh" do
        hesburgh_building

        params = { floor: floor_map.search_code }
        map_api.api_floor_map_from_request(params).should be_nil
      end


      it " returns a nil response if the floor does not exist " do
        params = { floor: "asdfasdfsdf", library:  building.search_code }
        map_api.api_floor_map_from_request(params).should be_nil
      end
    end


    context "with call number params" do

      it "takes params form the original api" do
        call_number_range
        params = { collection: call_number_range.collection_code, sublibrary: call_number_range.sublibrary_code, call_number: "PR 6073 .A83 B6"}

        map_api.api_floor_map_from_request(params).should == call_number_range.floor_map
      end


      it "defaults to collection: HESB and sublibray GEN" do
        range = FactoryGirl.create(:call_number_range, collection_code: 'GEN', sublibrary_code: 'HESB')
        params = { call_number: "PR 6073 .A83 B6"}

        map_api.api_floor_map_from_request(params).should == range.floor_map
      end


      it "returns nil if the call number range does not exist " do
        call_number_range
        params = { call_number: "safasdffdsfdasd"}

        map_api.api_floor_map_from_request(params).should be_nil
      end

    end
  end
end