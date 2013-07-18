require 'spec_helper'

describe Cataloging::SpecialProcedureType do
  let(:cataloging_special_procedure_type) { FactoryGirl.create(:cataloging_special_procedure_type) }

  describe "validations" do

	let(:valid_params) { { name: "ErMahGerd Lerk!" } } 

    it "saves with valid params" do
      cataloging_special_procedure_type.class.new(valid_params).save.should be_true
    end 

    it "requires name " do 
      data = valid_params
      data.delete(:name)

      cataloging_special_procedure_type.class.new(data).save.should be_false
    end

  end


end
