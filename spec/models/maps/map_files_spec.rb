require 'spec_helper'

describe Maps::MapFile do
  let(:map_file) { FactoryGirl.create(:map_file) }
  let(:map_file_list) { FactoryGirl.create_list(:map_file, 3) }
  let(:building) { FactoryGirl.create(:building) }

  it "has a building" do
    map_file.respond_to?(:building)
  end


  it "has an attached file" do
    map_file.methods.include?(:file_file_name).should be_true
    map_file.methods.include?(:file_content_type).should be_true
    map_file.methods.include?(:file_file_size).should be_true
    map_file.methods.include?(:file_updated_at).should be_true  
  end


  describe "validations" do 
    let(:valid_params) { { name: "Name", search_code: "code", building_id: building.id, file: File.open(File.join(Rails.root, 'spec', 'fixtures', 'test_file.jpg')) } }

    it "is valid with valid params" do
      mf = map_file.class.new(valid_params)
      mf.valid?.should be_true
    end

    it "requires the name param" do
      params = valid_params
      params.delete(:name)

      mf = map_file.class.new(valid_params)
      mf.valid?.should be_false
    end

    it "requires the search code " do
      params = valid_params
      params.delete(:search_code)

      mf = map_file.class.new(valid_params)
      mf.valid?.should be_false
    end

    it "requires a building " do
      params = valid_params
      params.delete(:building_id)

      mf = map_file.class.new(valid_params)
      mf.valid?.should be_false
    end

    it "requires a file " do
      params = valid_params
      params.delete(:file)

      mf = map_file.class.new(valid_params)
      mf.valid?.should be_false
    end
    
  end


  describe "#map_for_floor_and_building" do

    it "gets a map associated with a specific floor" do
      map_file_list

      map_file.class.map_for_floor_and_building(map_file_list[1].search_code, map_file_list[1].building).should == map_file_list[1]
    end


    it "returns nothing if the search code is invalid" do
      map_file_list

      map_file.class.map_for_floor_and_building("adsfdsfdsfdsf", map_file_list[1].building).should be_nil
    end

    it "returns nothing if the building is not correct" do 
      map_file_list

      map_file.class.map_for_floor_and_building(map_file_list[1].search_code, building).should be_nil
    end

    it "return nil if the building is nil" do
      map_file_list

      map_file.class.map_for_floor_and_building(map_file_list[1].search_code, nil).should be_nil      
    end

  end

end