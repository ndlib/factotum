require 'spec_helper'

describe Building do
  let(:building)  { FactoryGirl.create(:building)}
  let(:floor_map)  { FactoryGirl.create(:floor_map, building_id: building.id) }
  let(:floor_maps) { FactoryGirl.create_list(:floor_map, 2, building_id: building.id)}

 
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



  describe :floor_maps do

    it " returns a list of all the map files" do
      floor_maps

      building.floor_maps.size.should == floor_maps.size
    end
  end


  describe :list_floor_maps do

    it "orders the floors by floor number" do 
      f2 = FactoryGirl.create(:floor_map, name: '2st', building_id: building.id)
      f1 = FactoryGirl.create(:floor_map, name: '1st', building_id: building.id)
      res = [f1, f2]

      building.list_floor_maps.should == res
    end


    it "orders basement and lower level floors to the end of the list" do 
      f2 = FactoryGirl.create(:floor_map, name: 'lower level', building_id: building.id)
      f1 = FactoryGirl.create(:floor_map, name: '1st', building_id: building.id)
      res = [f1, f2]

      building.list_floor_maps.should == res
    end


    it "orders floors higher then 10 after the frist 10" do 
      f2 = FactoryGirl.create(:floor_map, name: '11th', building_id: building.id)
      f1 = FactoryGirl.create(:floor_map, name: '1st', building_id: building.id)
      res = [f1, f2]

      building.list_floor_maps.should == res      
    end    
  end


  describe :floor_map do

    it "returns a map file for the specified id " do
      floor_map

      building.floor_map(floor_map.id).should == floor_map
    end
  end


  describe :new_floor_map do 
    let(:valid_params) { { name: "name", search_code: "code", file_file_name: "filename" }}

    it "returns an empty floor_map when no id is specified " do
      building.new_floor_map.id.should be_nil
      building.new_floor_map.name.should be_nil
    end


    it "uses the current building not one that is passed in" do 
      params = valid_params
      params[:building_id] = FactoryGirl.create(:building).id

      mf = building.new_floor_map(valid_params)

      mf.building.should == building
    end


    it "creates a new map file " do
      mf = building.new_floor_map(valid_params)
      mf.valid?.should be_true
      mf.name.should == "name"
    end
  end   
 
end