require 'spec_helper'

describe "directory/employee_ranks/new" do
  before(:each) do
    assign(:directory_employee_rank, stub_model(Directory::EmployeeRank).as_new_record)
  end

  it "renders new directory_employee_rank form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", directory_employee_ranks_path, "post" do
    end
  end
end
