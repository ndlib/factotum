require 'rails_helper'

describe DirectoryContactInformation do

  let(:directory_contact_information) { FactoryBot.create(:directory_contact_information) }
  let(:directory_contact_phone) { FactoryBot.create(:directory_contact_phone) }
  let(:directory_contact_phone2) { FactoryBot.create(:directory_contact_phone, {primary_method: true}) }
  let(:directory_employee) { FactoryBot.create(:directory_employee) }

  describe "validations" do

    let(:valid_params) { { contact_information: "888-888-9000" } }

    it "requires contact information " do
      data = valid_params
      data.delete(:contact_information)

      expect(directory_contact_information.class.new(data).valid?).to be_falsey
    end

    it "phone numbers should be valid" do
      directory_contact_phone.contact_information = '123abd-456jkl'
      expect(directory_contact_phone.valid?).to be_falsey
    end

  end


  describe "inherited functionality" do

    it "reports whether contact info is primary or not" do
      expect(directory_contact_phone.is_primary?).to be_falsey
      expect(directory_contact_phone2.is_primary?).to be_truthy
    end

  end

end
