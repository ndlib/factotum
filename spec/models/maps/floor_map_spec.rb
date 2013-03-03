require 'spec_helper'

describe Maps::FloorMap do
  let(:floor_map) { FactoryGirl.create(:floor_map) }
  let(:floor_map_list) { FactoryGirl.create_list(:floor_map, 3) }
  let(:building) { FactoryGirl.create(:building) }

  let(:call_number_ranges) { FactoryGirl.create_list(:call_number_range, 2, floor_map: floor_map )}
  let(:call_number_range) { FactoryGirl.create(:call_number_range, floor_map: floor_map) }


  it "has a building" do
    floor_map.respond_to?(:building)
  end


  it "has an attached file" do
    floor_map.methods.include?(:file_file_name).should be_true
    floor_map.methods.include?(:file_content_type).should be_true
    floor_map.methods.include?(:file_file_size).should be_true
    floor_map.methods.include?(:file_updated_at).should be_true  
  end


  describe "validations" do 
    let(:valid_params) { { name: "Name", search_code: "code", building_id: building.id, file: File.open(File.join(Rails.root, 'spec', 'fixtures', 'test_file.jpg')) } }

    it "is valid with valid params" do
      mf = floor_map.class.new(valid_params)
      mf.valid?.should be_true
    end

    it "requires the name param" do    
      floor_map.class.new.should have(1).error_on(:name)
    end

    it "requires the search code " do
      floor_map.class.new.should have(1).error_on(:search_code)
    end

    it "requires a building " do
      floor_map.class.new.should have(1).error_on(:building)
    end

    it "requires a file " do
      floor_map.class.new.should have(1).error_on(:file_file_name)
    end
    
  end


  describe "#map_for_floor_and_building" do

    it "gets a map associated with a specific floor" do
      floor_map_list

      floor_map.class.map_for_floor_and_building(floor_map_list[1].search_code, floor_map_list[1].building).should == floor_map_list[1]
    end


    it "returns nothing if the search code is invalid" do
      floor_map_list

      floor_map.class.map_for_floor_and_building("adsfdsfdsfdsf", floor_map_list[1].building).should be_nil
    end

    it "returns nothing if the building is not correct" do 
      floor_map_list

      floor_map.class.map_for_floor_and_building(floor_map_list[1].search_code, building).should be_nil
    end

    it "return nil if the building is nil" do
      floor_map_list

      floor_map.class.map_for_floor_and_building(floor_map_list[1].search_code, nil).should be_nil      
    end

  end

  describe :call_number_ranges do

    it " returns a list of all the call_number_ranges" do
      call_number_ranges

      floor_map.call_number_ranges.size.should == call_number_ranges.size 
    end

  end

  describe :call_number_range do

    it "returns a call_number_range for the specified id " do
      call_number_range 

      floor_map.call_number_range(call_number_range.id).should == call_number_range
    end
  end


  describe :list_call_number_ranges do
    it "orders the result by beging call number range" do
      f2 = FactoryGirl.create(:call_number_range, begin_call_number: '4a', floor_map_id: floor_map.id)
      f1 = FactoryGirl.create(:call_number_range, begin_call_number: '1a', floor_map_id: floor_map.id)
      res = [f1, f2]

      floor_map.list_call_number_ranges.should == res
    end
  end


  describe :new_call_number_range do 
    let(:valid_params) { { collection_code: 'collection', sublibrary_code: 'sublibrary', begin_call_number: '1111', end_call_number: '2222' } }

    it "creates a new call_number_range " do
      mf = floor_map.new_call_number_range(valid_params)
      mf.valid?.should be_true
    end


    it "returns an empty call_number_range when no id is specified " do
      floor_map.new_call_number_range.id.should be_nil
      floor_map.new_call_number_range.collection_code.should be_nil
    end


    it "associates the call_number_range from the current map file and not another one passed in" do 
      params = valid_params
      params[:floor_map_id] = FactoryGirl.create(:floor_map).id

      mf = floor_map.new_call_number_range(params)
      mf.floor_map.id.should_not == params[:floor_map_id]
      mf.floor_map.should == floor_map
    end

  end 


end