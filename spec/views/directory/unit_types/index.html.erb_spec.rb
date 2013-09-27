require 'spec_helper'

describe "directory/unit_types/index" do
  before(:each) do
    assign(:directory_unit_types, [
      stub_model(Directory::UnitType),
      stub_model(Directory::UnitType)
    ])
  end

  it "renders a list of directory/unit_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
