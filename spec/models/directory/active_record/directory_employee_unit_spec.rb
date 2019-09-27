require 'rails_helper'

describe DirectoryEmployeeUnit do

  let(:directory_employee_unit) { FactoryBot.create(:directory_employee_unit) }

  describe "validations" do

	let(:valid_params) { { organizational_unit_id: 1, employee_id: 1 } }

    it "saves with valid params" do
      expect(directory_employee_unit.class.new(valid_params).save).to be_truthy
    end

    it "requires employee id " do
      data = valid_params
      data.delete(:employee_id)

      expect(directory_employee_unit.class.new(data).save).to be_falsey
    end

    it "requires org unit id " do
      data = valid_params
      data.delete(:organizational_unit_id)

      expect(directory_employee_unit.class.new(data).save).to be_falsey
    end


  end

end
