require 'spec_helper'

describe "directory/employee_ranks/show" do
  before(:each) do
    @directory_employee_rank = assign(:directory_employee_rank, stub_model(Directory::EmployeeRank))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
