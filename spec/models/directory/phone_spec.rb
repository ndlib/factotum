require 'spec_helper'

describe Directory::Phone do
  
  let(:directory_phone) { FactoryGirl.create(:directory_phone) }

  describe "validations" do

	let(:valid_params) { { contact_information: "631-9000" } } 
	let(:letter_params) { { contact_information: "dfdfsd" } } 
  let(:number_params) { { contact_information: "3333" } } 

    # not working!
    #it "saves with valid params" do
    #  directory_phone.class.new(valid_params).save.should be_true
    #end 


    #it "is invalid with just letters" do
    #  directory_phone.class.new(letter_params).should_not be_valid
    #end 


    #it "is invalid with wrong number of numbers" do
    #  directory_phone.class.new(number_params).should_not be_valid
    #end 


  end

end
