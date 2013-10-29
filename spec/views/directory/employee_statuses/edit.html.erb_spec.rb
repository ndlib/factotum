require 'spec_helper'

describe "directory/employee_statuses/edit" do
  before(:each) do
    @directory_employee_status = assign(:directory_employee_status, stub_model(Directory::EmployeeStatus))
  end

  it "renders the edit directory_employee_status form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", directory_employee_status_path(@directory_employee_status), "post" do
    end
  end
end
