require 'spec_helper'

describe Building do
  let(:building) {FactoryGirl.create(:building)}

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
 
end