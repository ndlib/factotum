require 'spec_helper'

describe "directory/employee_units/new" do
  before(:each) do
    assign(:directory_employee_unit, stub_model(Directory::EmployeeUnit).as_new_record)
  end

  it "renders new directory_employee_unit form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", directory_employee_units_path, "post" do
    end
  end
end
