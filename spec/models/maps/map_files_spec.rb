require 'spec_helper'

describe Maps::MapFile do
  let(:map_file) { FactoryGirl.create(:map_file) }
  let(:floor) { map_file.floor }
  
  it "has a floor" do
    map_file.respond_to?(:floor)
  end

  it "has a library" do
    map_file.respond_to?(:library)
  end

  describe "#map_for_floor" do

    it "gets a map associated with a specific floor" do
      map_file.class.map_for_floor(floor).first.should == map_file
    end    
  end

end