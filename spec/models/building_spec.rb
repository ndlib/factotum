require 'rails_helper'

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
      f2 = FactoryGirl.create(:floor_map, name: '2st', floor_number: 2, building_id: building.id)
      f1 = FactoryGirl.create(:floor_map, name: '1st', floor_number: 1, building_id: building.id)
      res = [f1, f2]

      building.list_floor_maps.should == res
    end


    it "orders basement and lower level floors to the begining" do
      f1 = FactoryGirl.create(:floor_map, name: 'lower level', floor_number: 0, building_id: building.id)
      f2 = FactoryGirl.create(:floor_map, name: '1st', floor_number: 1, building_id: building.id)
      res = [f1, f2]

      building.list_floor_maps.should == res
    end


    it "orders floors higher then 10 after the frist 10" do
      f2 = FactoryGirl.create(:floor_map, name: '11th', floor_number: 11, building_id: building.id)
      f1 = FactoryGirl.create(:floor_map, name: '1st', floor_number: 1, building_id: building.id)
      res = [f1, f2]

      building.list_floor_maps.should == res
    end
  end



  describe "#map_for_floor" do

    it "gets a map associated with a specific floor" do
      floor_maps

      building.map_for_floor(floor_maps[1].search_code).should == floor_maps[1]
    end


    it "returns nothing if the search code is invalid" do
      floor_maps

      building.map_for_floor("adsfdsfdsfdsf").should be_nil
    end


    it "returns nothing if the building is not correct" do
      new_building = FactoryGirl.create(:building)
      flm = FactoryGirl.create_list(:floor_map, 2, building_id: new_building.id)

      building.map_for_floor(flm[1].search_code).should be_nil
    end
  end


  describe :floor_map do

    it "returns a map file for the specified id " do
      floor_map

      building.floor_map(floor_map.id).should == floor_map
    end
  end


  describe :new_floor_map do
    let(:valid_params) { { name: "name", search_code: "code", map_file_name: "filename", floor_number: 1 }}

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