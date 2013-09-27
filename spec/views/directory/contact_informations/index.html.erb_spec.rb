require 'spec_helper'

describe "directory/contact_informations/index" do
  before(:each) do
    assign(:directory_contact_informations, [
      stub_model(Directory::ContactInformation),
      stub_model(Directory::ContactInformation)
    ])
  end

  it "renders a list of directory/contact_informations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
