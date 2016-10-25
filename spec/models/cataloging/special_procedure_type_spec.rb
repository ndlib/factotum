require 'rails_helper'

describe Cataloging::SpecialProcedureType do
  let(:cataloging_special_procedure_type) { FactoryGirl.create(:cataloging_special_procedure_type) }

  describe "validations" do

	let(:valid_params) { { name: "ErMahGerd Lerk!" } }

    it "saves with valid params" do
      expect(cataloging_special_procedure_type.class.new(valid_params).save).to be_truthy
    end

    it "requires name " do
      data = valid_params
      data.delete(:name)

      expect(cataloging_special_procedure_type.class.new(data).save).to be_falsey
    end

  end


end
