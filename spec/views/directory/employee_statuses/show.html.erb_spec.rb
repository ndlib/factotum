require 'spec_helper'

describe "directory/employee_statuses/show" do
  before(:each) do
    @directory_employee_status = assign(:directory_employee_status, stub_model(Directory::EmployeeStatus))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
