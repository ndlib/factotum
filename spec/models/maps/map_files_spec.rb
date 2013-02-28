require 'spec_helper'

describe Maps::MapFile do
  let(:map_file) { FactoryGirl.create(:map_file) }
  

  it "has a building" do
    map_file.respond_to?(:building)
  end


  describe "#map_for_floor" do

    it "gets a map associated with a specific floor" do
      map_file.class.map_for_floor_and_building(map_file.search_code, map_file.building).should == map_file
    end    
  end

end