require 'spec_helper'

describe "directory/organizational_units/edit" do
  before(:each) do
    @directory_organizational_unit = assign(:directory_organizational_unit, stub_model(Directory::OrganizationalUnit))
  end

  it "renders the edit directory_organizational_unit form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", directory_organizational_unit_path(@directory_organizational_unit), "post" do
    end
  end
end
