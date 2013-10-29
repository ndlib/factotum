require 'spec_helper'

describe "directory/employee_statuses/index" do
  before(:each) do
    assign(:directory_employee_statuses, [
      stub_model(Directory::EmployeeStatus),
      stub_model(Directory::EmployeeStatus)
    ])
  end

  it "renders a list of directory/employee_statuses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
