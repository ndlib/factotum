require 'spec_helper'

describe "directory/employee_ranks/index" do
  before(:each) do
    assign(:directory_employee_ranks, [
      stub_model(Directory::EmployeeRank),
      stub_model(Directory::EmployeeRank)
    ])
  end

  it "renders a list of directory/employee_ranks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
