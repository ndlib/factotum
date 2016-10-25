require 'rails_helper'

describe DirectorySubject do

  let(:directory_subject) { FactoryGirl.create(:directory_subject) }

  describe "validations" do

	let(:valid_params) { { name: "Lerbery" } }

    it "saves with valid params" do
      expect(directory_subject.class.new(valid_params).save).to be_truthy
    end

    it "requires name " do
      data = valid_params
      data.delete(:name)

      expect(directory_subject.class.new(data).save).to be_falsey
    end

  end


end
