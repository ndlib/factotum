require 'spec_helper'

describe Building do
  let(:building) {FactoryGirl.create(:building)}
  let(:map_file) { FactoryGirl.create(:map_file, building_id: building.id) }
  let(:map_files) { FactoryGirl.create_list(:map_file, 2, building_id: building.id)}


  describe "validations" do
    let(:valid_params) { { name: "Libaray", search_code: 'code' } } 


    it "saves with valid params" do
      Building.new(valid_params).save.should be_true
    end 

    it "requires name " do 
      data = valid_params
      data.delete(:name)

      Building.new(data).save.should be_false
    end

    it "requires a code " do
      data = valid_params
      data.delete(:search_code)

      Building.new(data).save.should be_false
    end

    it "requrires a unique code " do
      data = valid_params
      data[:search_code] = building.search_code
 
      Building.new(data).save.should be_false
    end
  end



  describe :map_files do

    it " returns a list of all the map files" do
      map_files

      building.map_files.size.should == map_files.size
    end
  end


  describe :file do

    it "returns a map file for the specified id " do
      map_file

      building.map_file(map_file.id).should == map_file
    end
  end


  describe :new_map_file do 
    let(:valid_params) { { name: "name", search_code: "code", file_file_name: "filename" }}

    it "returns an empty map_file when no id is specified " do
      building.new_map_file.id.should be_nil
      building.new_map_file.name.should be_nil
    end

    it "uses the current building not one that is passed in" do 
      params = valid_params
      params[:building_id] = FactoryGirl.create(:building).id

      mf = building.new_map_file(valid_params)
      mf.building.should == building
    end


    it "creates a new map file " do
      mf = building.new_map_file(valid_params)
      mf.valid?.should be_true
      mf.name.should == "name"
    end
  end   
 
end