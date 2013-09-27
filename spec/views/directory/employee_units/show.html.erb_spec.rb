require 'spec_helper'

describe "directory/employee_units/show" do
  before(:each) do
    @directory_employee_unit = assign(:directory_employee_unit, stub_model(Directory::EmployeeUnit))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
