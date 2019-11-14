require 'rails_helper'

describe Cataloging::Format do
  let(:cataloging_format) { FactoryBot.create(:cataloging_format) }

  describe "validations" do

	let(:valid_params) { { name: "Berks" } }

    it "saves with valid params" do
      expect(cataloging_format.class.new(valid_params).save).to be_truthy
    end

    it "requires name " do
      data = valid_params
      data.delete(:name)

      expect(cataloging_format.class.new(data).save).to be_falsey
    end

  end


end
