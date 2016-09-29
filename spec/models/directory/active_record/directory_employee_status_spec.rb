require 'rails_helper'

describe DirectoryEmployeeStatus do


  let(:directory_employee_status) { FactoryGirl.create(:directory_employee_status) }

  describe "validations" do

	let(:valid_params) { { name: "Lerbery" } }

    it "saves with valid params" do
      expect(directory_employee_status.class.new(valid_params).save).to be_truthy
    end

    it "requires name " do
      data = valid_params
      data.delete(:name)

      expect(directory_employee_status.class.new(data).save).to be_falsey
    end

  end



end
