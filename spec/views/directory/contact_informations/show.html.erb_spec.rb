require 'spec_helper'

describe "directory/contact_informations/show" do
  before(:each) do
    @directory_contact_information = assign(:directory_contact_information, stub_model(Directory::ContactInformation))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
