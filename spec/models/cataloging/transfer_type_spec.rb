require 'rails_helper'

describe Cataloging::TransferType do
  let(:cataloging_transfer_type) { FactoryGirl.create(:cataloging_transfer_type) }

  describe "validations" do

	let(:valid_params) { { from_location_id: 999999, to_location_id: 11111111 } }

    it "saves with valid params" do
      expect(cataloging_transfer_type.class.new(valid_params).save).to be_truthy
    end

    it "requires from location id " do
      data = valid_params
      data.delete(:from_location_id)

      expect(cataloging_transfer_type.class.new(data).save).to be_falsey
    end

  end


end
