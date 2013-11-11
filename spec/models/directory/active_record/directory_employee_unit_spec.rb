require 'spec_helper'

describe DirectoryEmployeeUnit do

  let(:directory_employee_unit) { FactoryGirl.create(:directory_employee_unit) }

  describe "validations" do

	let(:valid_params) { { organizational_unit_id: 1, employee_id: 1 } } 

    it "saves with valid params" do
      directory_employee_unit.class.new(valid_params).save.should be_true
    end 

    it "requires employee id " do 
      data = valid_params
      data.delete(:employee_id)

      directory_employee_unit.class.new(data).save.should be_false
    end

    it "requires org unit id " do 
      data = valid_params
      data.delete(:organizational_unit_id)

      directory_employee_unit.class.new(data).save.should be_false
    end


  end

end
