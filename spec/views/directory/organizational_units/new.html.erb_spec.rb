require 'spec_helper'

describe "directory/organizational_units/new" do
  before(:each) do
    assign(:directory_organizational_unit, stub_model(Directory::OrganizationalUnit).as_new_record)
  end

  it "renders new directory_organizational_unit form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", directory_organizational_units_path, "post" do
    end
  end
end
