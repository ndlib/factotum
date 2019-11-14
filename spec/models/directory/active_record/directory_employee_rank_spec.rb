require 'rails_helper'

describe DirectoryEmployeeRank do

  let(:directory_employee_rank) { FactoryBot.create(:directory_employee_rank) }

  describe "validations" do

	let(:valid_params) { { name: "Lerbery" } }

    it "saves with valid params" do
      expect(directory_employee_rank.class.new(valid_params).save).to be_truthy
    end

    it "requires name " do
      data = valid_params
      data.delete(:name)

      expect(directory_employee_rank.class.new(data).save).to be_falsey
    end

  end




end
