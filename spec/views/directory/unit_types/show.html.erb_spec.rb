require 'spec_helper'

describe "directory/unit_types/show" do
  before(:each) do
    @directory_unit_type = assign(:directory_unit_type, stub_model(Directory::UnitType))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
