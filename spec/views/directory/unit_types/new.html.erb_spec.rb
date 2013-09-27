require 'spec_helper'

describe "directory/unit_types/new" do
  before(:each) do
    assign(:directory_unit_type, stub_model(Directory::UnitType).as_new_record)
  end

  it "renders new directory_unit_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", directory_unit_types_path, "post" do
    end
  end
end
