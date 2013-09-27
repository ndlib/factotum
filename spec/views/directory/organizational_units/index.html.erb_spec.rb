require 'spec_helper'

describe "directory/organizational_units/index" do
  before(:each) do
    assign(:directory_organizational_units, [
      stub_model(Directory::OrganizationalUnit),
      stub_model(Directory::OrganizationalUnit)
    ])
  end

  it "renders a list of directory/organizational_units" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
