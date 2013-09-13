require 'spec_helper'

describe Cataloging::Format do
  let(:cataloging_format) { FactoryGirl.create(:cataloging_format) }

  describe "validations" do

	let(:valid_params) { { name: "Berks" } } 

    it "saves with valid params" do
      cataloging_format.class.new(valid_params).save.should be_true
    end 

    it "requires name " do 
      data = valid_params
      data.delete(:name)

      cataloging_format.class.new(data).save.should be_false
    end

  end


end
