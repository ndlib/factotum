require 'spec_helper'

describe Directory::ContactInformation do
  
  let(:directory_contact_information) { FactoryGirl.create(:directory_contact_information) }

  describe "validations" do

	let(:valid_params) { { contact_information: "888-888-9000" } } 

    it "requires contact information " do 
      data = valid_params
      data.delete(:contact_information)

      directory_contact_information.class.new(data).save.should be_false
    end

  end

end
