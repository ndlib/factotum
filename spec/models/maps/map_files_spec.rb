require 'spec_helper'

describe Maps::MapFile do
  let(:map_file) { FactoryGirl.create(:map_file) }
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
  

  it "each map has many floors" do
    map_file.floors << floor
    map_file.save! 
 
    map_file.reload
    map_file.floors = [ floor ]
  end


end