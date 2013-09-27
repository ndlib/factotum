require 'spec_helper'

describe "Directory::ContactInformations" do
  describe "GET /directory_contact_informations" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get directory_contact_informations_path
      response.status.should be(200)
    end
  end
end
