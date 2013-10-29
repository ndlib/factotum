require 'spec_helper'

describe "directory/employee_ranks/edit" do
  before(:each) do
    @directory_employee_rank = assign(:directory_employee_rank, stub_model(Directory::EmployeeRank))
  end

  it "renders the edit directory_employee_rank form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", directory_employee_rank_path(@directory_employee_rank), "post" do
    end
  end
end
