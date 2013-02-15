require 'spec_helper'

describe MapsApi do
  let(:map_api) { MapsApi.new }
  let(:map_files) { FactoryGirl.create_list(:map_file, 2)}
  let(:map_file) { FactoryGirl.create(:map_file)}

  describe :map_files do

    it " returns a list of all the map files" do
      map_files

      map_api.map_files.size.should == map_files.size
    end

  end

  describe :map_file do

    it "returns a map file for the specified id " do
      map_file

      map_api.map_file(map_file.id).should == map_file
    end


    it "returns an empty map_file when no id is specified " do
      map_api.map_file.id.should be_nil
      map_api.map_file.name.should be_nil
    end

  end


  describe :new_map_file do 
    let(:valid_params) { { name: "name", file_file_name: "filename" }}

    it "creates a new map file " do
      mf = map_api.new_map_file(valid_params)
      mf.valid?.should be_true
    end
  end 


  describe :update_map_file do

    it "updates a map file " do
      mf = map_api.update_map_file(map_file, { name: "new name"})
      mf.name.should == "new name"
    end

  end


  describe :delete_map_file do

    it "deletes the map file " do
      mf = map_file
      map_api.delete_map_file(mf)

      expect { mf.reload }.to raise_error
    end
  end
end