require 'spec_helper'

describe Maps::MapFile do
  let(:map_file) { FactoryGirl.create(:map_file, floor: floor) }
  let(:floor) { FactoryGirl.create(:floor)}

  describe "validations" do
    let(:valid_params) { { name: "name", file_file_name: "filename" }}
    
    it "saves with valid params" do
      Maps::MapFile.new(valid_params).save.should be_true
    end

    it "requires name " do
      data = valid_params
      data.delete(:name)

      Maps::MapFile.new(data).save.should be_false
    end


    it "requires file attachment " do
      data = valid_params
      data.delete(:file_file_name)

      Maps::MapFile.new(data).save.should be_false
    end
  end
  

  it "each map belongs to a floors" do
    map_file.floor = floor
    map_file.save! 
 
    map_file.reload
    map_file.floor.should ==  floor
  end

  describe "#map_for_floor_and_building" do

    it "gets a map associated with a specific floor" do
      map_file.class.map_for_floor_and_building(floor).should == map_file
    end

    it "gets a map associated with a building and floor" do
      map_file.class.map_for_floor_and_building(floor, floor.library).should == map_file
    end
  end

end