require 'spec_helper'

describe DirectoryContactFax do

  describe "validations" do

    let(:valid_params) { { contact_information: "631-9000" } } 
    let(:letter_params) { { contact_information: "dfdfsd" } } 
    let(:number_params) { { contact_information: "3333" } } 

    it "saves with valid params" do
      DirectoryContactFax.new(valid_params).save.should be_true
    end 


    it "is invalid with just letters" do
      DirectoryContactFax.new(letter_params).should_not be_valid
    end 


    it "is invalid with wrong number of numbers" do
      DirectoryContactFax.new(number_params).should_not be_valid
    end 

  end

end
