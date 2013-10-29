require 'spec_helper'

describe Directory::EmployeeRank do
 
  let(:directory_employee_rank) { FactoryGirl.create(:directory_employee_rank) }

  describe "validations" do

	let(:valid_params) { { name: "Lerbery" } } 

    it "saves with valid params" do
      directory_employee_rank.class.new(valid_params).save.should be_true
    end 

    it "requires name " do 
      data = valid_params
      data.delete(:name)

      directory_employee_rank.class.new(data).save.should be_false
    end

  end




end
