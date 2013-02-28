require 'spec_helper'

describe Maps::MapCallNumberRange do

  let(:call_number_range) { FactoryGirl.create(:map_call_number_range) }
  let(:map_file) { FactoryGirl.create(:map_file) }

  it "has a map file" do
    call_number_range.map_file.should_not be_nil
  end

  describe "validations" do 
    let(:valid_params) { { collection_code: 'collection', sublibrary_code: 'sublibrary', begin_call_number: '1111', end_call_number: '2222', map_file_id: map_file.id } }

    it "saves with valid parameters" do
      cnr = Maps::MapCallNumberRange.new(valid_params)
      cnr.valid?.should be_true
    end


    it "requires collection_code" do 
      params = valid_params 
      params.delete(:collection_code)

      cnr = Maps::MapCallNumberRange.new(valid_params)
      cnr.valid?.should be_false      
    end


    it "requires sublibrary_code" do 
      params = valid_params
      params.delete(:sublibrary_code)

      cnr = Maps::MapCallNumberRange.new(valid_params)
      cnr.valid?.should be_false      
    end


    it "requires a start_range" do 
      params = valid_params
      params.delete(:begin_call_number)

      cnr = Maps::MapCallNumberRange.new(valid_params)
      cnr.valid?.should be_false      
    end

    it "requires an end_range" do 
      params = valid_params
      params.delete(:end_call_number)

      cnr = Maps::MapCallNumberRange.new(valid_params)
      cnr.valid?.should be_false      
    end


    it "requires a map_file" do 
      params = valid_params
      params.delete(:map_file_id)

      cnr = Maps::MapCallNumberRange.new(valid_params)
      cnr.valid?.should be_false      
    end
  end
end