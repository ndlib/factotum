require 'rails_helper'

describe Maps::CallNumberRange do

  let(:call_number_range) { FactoryGirl.create(:call_number_range) }
  let(:floor_map) { FactoryGirl.create(:floor_map) }

  it "has a map file" do
    expect(call_number_range.floor_map).not_to be_nil
  end


  describe "range_name" do
    it " is the call number range " do
      expect(call_number_range.range_name).to eq("#{call_number_range.begin_call_number} - #{call_number_range.end_call_number}")
    end
  end


  describe "validations" do
    let(:valid_params) { { collection_code: 'collection', sublibrary_code: 'sublibrary', begin_call_number: '1111', end_call_number: '2222', floor_map_id: floor_map.id } }

    it "saves with valid parameters" do
      cnr = call_number_range.class.new(valid_params)
      expect(cnr.valid?).to be_truthy
    end



    it "requires collection_code" do
      call_range = call_number_range.class.new
      call_range.valid?
      expect(call_range.errors[:collection_code].size).to eq(1)
    end


    it "requires sublibrary_code" do
      call_range = call_number_range.class.new
      call_range.valid?
      expect(call_range.errors[:sublibrary_code].size).to eq(1)
    end


    it "requires a start_range" do
      call_range = call_number_range.class.new
      call_range.valid?
      expect(call_range.errors[:begin_call_number].size).to eq(1)
    end


    it "requires an end_range" do
      call_range = call_number_range.class.new
      call_range.valid?
      expect(call_range.errors[:end_call_number].size).to eq(1)
    end


    it "requires a floor_map" do
      call_range = call_number_range.class.new
      call_range.valid?
      expect(call_range.errors[:floor_map].size).to eq(1)
    end
  end
end