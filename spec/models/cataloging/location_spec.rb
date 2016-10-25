require 'rails_helper'

describe Cataloging::Location do
  let(:cataloging_location) { FactoryGirl.create(:cataloging_location) }

  describe "validations" do

	let(:valid_params) { { name: "Lerbery" } }

    it "saves with valid params" do
      expect(cataloging_location.class.new(valid_params).save).to be_truthy
    end

    it "requires name " do
      data = valid_params
      data.delete(:name)

      expect(cataloging_location.class.new(data).save).to be_falsey
    end

  end


end
