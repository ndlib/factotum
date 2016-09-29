require 'rails_helper'

describe Cataloging::Location do
  let(:cataloging_location) { FactoryGirl.create(:cataloging_location) }

  describe "validations" do

	let(:valid_params) { { name: "Lerbery" } }

    it "saves with valid params" do
      cataloging_location.class.new(valid_params).save.should be_true
    end

    it "requires name " do
      data = valid_params
      data.delete(:name)

      cataloging_location.class.new(data).save.should be_false
    end

  end


end
