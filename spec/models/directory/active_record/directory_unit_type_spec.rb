require 'rails_helper'

describe DirectoryUnitType do

  let(:directory_unit_type) { FactoryBot.create(:directory_unit_type) }

  describe "validations" do

	let(:valid_params) { { name: "Lerbery" } }

    it "saves with valid params" do
      expect(directory_unit_type.class.new(valid_params).save).to be_truthy
    end

    it "requires name " do
      data = valid_params
      data.delete(:name)

      expect(directory_unit_type.class.new(data).save).to be_falsey
    end

  end


end
