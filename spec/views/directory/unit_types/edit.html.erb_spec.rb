require 'spec_helper'

describe "directory/unit_types/edit" do
  before(:each) do
    @directory_unit_type = assign(:directory_unit_type, stub_model(Directory::UnitType))
  end

  it "renders the edit directory_unit_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", directory_unit_type_path(@directory_unit_type), "post" do
    end
  end
end
