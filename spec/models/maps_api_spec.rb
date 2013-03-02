require 'spec_helper'

describe MapsApi do

  let(:map_api) { MapsApi.new(mock(ActionController::TestRequest)) }
  let(:map_file) { FactoryGirl.create(:map_file) }
  let(:map_files) { FactoryGirl.create_list(:map_file, 2)}

  let(:building) { map_file.building }

  let(:hesburgh_building) { FactoryGirl.create(:building, search_code: 'hesburgh')}
  let(:hesburgh_map_file) { FactoryGirl.create(:map_file, building: hesburgh_building) }


  describe :files do

    it " returns a list of all the map files" do
      map_files

      map_api.files.size.should == map_files.size
    end
  end


  describe :file do

    it "returns a map file for the specified id " do
      map_file

      map_api.file(map_file.id).should == map_file
    end
  end


  describe :new_map_file do 
    let(:valid_params) { { name: "name", search_code: "code", file_file_name: "filename", building_id: building.id }}

    it "returns an empty map_file when no id is specified " do
      map_api.new_file.id.should be_nil
      map_api.new_file.name.should be_nil
    end


    it "creates a new map file " do
      mf = map_api.new_file(valid_params)
      mf.valid?.should be_true
      mf.name.should == "name"
    end
  end 


  describe "#api_floorplan_request" do
      
    it "takes the params form the original api" do
      params = { floor: map_file.search_code, library: building.search_code } 
      map_api.api_floorplan_request(params).map_file.should == map_file
    end


    it "defaults to hesburgh building if no library is passed in " do 
      params = { floor: hesburgh_map_file.search_code } 
      map_api.api_floorplan_request(params).map_file.should == hesburgh_map_file
    end


    it "returns a nil response if no building is passed in and the map is not part of hesburgh" do
      hesburgh_building

      params = { floor: map_file.search_code } 
      map_api.api_floorplan_request(params).map_file.should be_nil
    end


    it " returns a nil response if the floor does not exist " do 
      params = { floor: "asdfasdfsdf", library:  building.search_code } 
      map_api.api_floorplan_request(params).map_file.should be_nil
    end


    it "assumes building of hesburgh if no building " do 

    end

    it "returns a MapsApiResponse " do
      params = { floor: '1st', library: building.search_code } 
      map_api.api_floorplan_request(params).is_a?(Maps::MapsApiResponse)
    end

  end
end