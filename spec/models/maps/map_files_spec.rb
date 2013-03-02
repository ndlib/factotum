require 'spec_helper'

describe Maps::MapFile do
  let(:map_file) { FactoryGirl.create(:map_file) }
  let(:map_file_list) { FactoryGirl.create_list(:map_file, 3) }
  let(:building) { FactoryGirl.create(:building) }

  let(:call_number_ranges) { FactoryGirl.create_list(:map_call_number_range, 2, map_file: map_file )}
  let(:call_number_range) { FactoryGirl.create(:map_call_number_range, map_file: map_file) }


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

  describe :call_number_ranges do

    it " returns a list of all the call_number_ranges" do
      call_number_ranges

      map_file.call_number_ranges.size.should == call_number_ranges.size 
    end

  end

  describe :call_number_range do

    it "returns a call_number_range for the specified id " do
      call_number_range 

      map_file.call_number_range(call_number_range.id).should == call_number_range
    end

  end


  describe :new_call_number_range do 
    let(:valid_params) { { collection_code: 'collection', sublibrary_code: 'sublibrary', begin_call_number: '1111', end_call_number: '2222' } }

    it "creates a new call_number_range " do
      mf = map_file.new_call_number_range(valid_params)
      mf.valid?.should be_true
    end


    it "returns an empty call_number_range when no id is specified " do
      map_file.new_call_number_range.id.should be_nil
      map_file.new_call_number_range.collection_code.should be_nil
    end


    it "associates the call_number_range from the map admin and not another one passed in" do 
      params = valid_params
      params[:map_file_id] = FactoryGirl.create(:map_file).id

      mf = map_file.new_call_number_range(params)
      mf.map_file.id.should_not == params[:map_file_id]
      mf.map_file.should == map_file
    end

  end 


end