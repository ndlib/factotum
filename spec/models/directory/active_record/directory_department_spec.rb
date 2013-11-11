require 'spec_helper'

describe DirectoryDepartment do
  
  let(:directory_department) { FactoryGirl.create(:directory_department) }

  describe "validations" do

	let(:valid_params) { { name: "Mai Faverit Lerbery!" } } 

    it "saves with valid params" do
    	#binding.pry
      directory_department.class.new(valid_params).save.should be_true
    end 


    it "requires name to be unique" do 
      data = valid_params
      data[:name] = directory_department.name

      directory_department.class.new(data).save.should be_false
    end


  end




end
