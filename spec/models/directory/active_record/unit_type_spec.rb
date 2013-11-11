require 'spec_helper'

describe DirectoryUnitType do
  
  let(:directory_unit_type) { FactoryGirl.create(:directory_unit_type) }

  describe "validations" do

	let(:valid_params) { { name: "Lerbery" } } 

    it "saves with valid params" do
      directory_unit_type.class.new(valid_params).save.should be_true
    end 

    it "requires name " do 
      data = valid_params
      data.delete(:name)

      directory_unit_type.class.new(data).save.should be_false
    end

  end


end
