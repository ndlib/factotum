require 'spec_helper'

describe "directory/organizational_units/show" do
  before(:each) do
    @directory_organizational_unit = assign(:directory_organizational_unit, stub_model(Directory::OrganizationalUnit))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
