require 'rails_helper'

describe DirectoryContactInformation do

  let(:directory_contact_information) { FactoryGirl.create(:directory_contact_information) }
  let(:directory_contact_phone) { FactoryGirl.create(:directory_contact_phone) }
  let(:directory_contact_phone2) { FactoryGirl.create(:directory_contact_phone, {primary_method: true}) }
  let(:directory_employee) { FactoryGirl.create(:directory_employee) }

  describe "validations" do

    let(:valid_params) { { contact_information: "888-888-9000" } }

    it "requires contact information " do
      data = valid_params
      data.delete(:contact_information)

      directory_contact_information.class.new(data).valid?.should be_false
    end

    it "phone numbers should be valid" do
      directory_contact_phone.contact_information = '123abd-456jkl'
      directory_contact_phone.valid?.should be_false
    end

  end


  describe "inherited functionality" do

    it "reports whether contact info is primary or not" do
      directory_contact_phone.is_primary?.should be_false
      directory_contact_phone2.is_primary?.should be_true
    end

  end

end
