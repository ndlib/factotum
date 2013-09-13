require 'spec_helper'

describe Cataloging::TransferType do
  let(:cataloging_transfer_type) { FactoryGirl.create(:cataloging_transfer_type) }

  describe "validations" do

	let(:valid_params) { { name: "Lerbery ter Lerbery" } } 

    it "saves with valid params" do
      cataloging_transfer_type.class.new(valid_params).save.should be_true
    end 

    it "requires name " do 
      data = valid_params
      data.delete(:name)

      cataloging_transfer_type.class.new(data).save.should be_false
    end

  end


end
