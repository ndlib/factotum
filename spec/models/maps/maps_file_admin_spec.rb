require 'spec_helper'

describe Maps::MapFileAdmin do
  let(:map_file_admin) { MapsApi.new.map_file_admin }
  let(:map_files) { FactoryGirl.create_list(:map_file, 2)}
  let(:map_file) { FactoryGirl.create(:map_file)}
  let(:floor) {FactoryGirl.create(:floor) }

  describe :map_files do

    it " returns a list of all the map files" do
      map_files

      map_file_admin.map_files.size.should == map_files.size
    end

  end

  describe :map_file do

    it "returns a map file for the specified id " do
      map_file

      map_file_admin.map_file(map_file.id).should == map_file
    end


    it "returns an empty map_file when no id is specified " do
      map_file_admin.map_file.id.should be_nil
      map_file_admin.map_file.name.should be_nil
    end

  end


  describe :new_map_file do 
    let(:valid_params) { { name: "name", file_file_name: "filename", floor_id: floor.id }}

    it "creates a new map file " do
      mf = map_file_admin.new_map_file(valid_params)
      mf.valid?.should be_true
    end
  end 


  describe :update_map_file do

    it "updates a map file " do
      mf = map_file_admin.update_map_file(map_file, { name: "new name"})
      mf.name.should == "new name"
    end

  end


  describe :delete_map_file do

    it "deletes the map file " do
      mf = map_file
      map_file_admin.delete_map_file(mf)

      expect { mf.reload }.to raise_error
    end
  end
end