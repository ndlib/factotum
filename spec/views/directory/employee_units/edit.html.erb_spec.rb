require 'spec_helper'

describe "directory/employee_units/edit" do
  before(:each) do
    @directory_employee_unit = assign(:directory_employee_unit, stub_model(Directory::EmployeeUnit))
  end

  it "renders the edit directory_employee_unit form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", directory_employee_unit_path(@directory_employee_unit), "post" do
    end
  end
end
