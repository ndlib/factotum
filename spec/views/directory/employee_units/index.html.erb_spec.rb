require 'spec_helper'

describe "directory/employee_units/index" do
  before(:each) do
    assign(:directory_employee_units, [
      stub_model(Directory::EmployeeUnit),
      stub_model(Directory::EmployeeUnit)
    ])
  end

  it "renders a list of directory/employee_units" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
