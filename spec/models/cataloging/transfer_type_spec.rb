require 'rails_helper'

describe Cataloging::TransferType do
  let(:cataloging_transfer_type) { FactoryGirl.create(:cataloging_transfer_type) }

  describe "validations" do

	let(:valid_params) { { from_location_id: 999999, to_location_id: 11111111 } }

    it "saves with valid params" do
      cataloging_transfer_type.class.new(valid_params).save.should be_true
    end

    it "requires from location id " do
      data = valid_params
      data.delete(:from_location_id)

      cataloging_transfer_type.class.new(data).save.should be_false
    end

  end


end
