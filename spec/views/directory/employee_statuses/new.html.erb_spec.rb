require 'spec_helper'

describe "directory/employee_statuses/new" do
  before(:each) do
    assign(:directory_employee_status, stub_model(Directory::EmployeeStatus).as_new_record)
  end

  it "renders new directory_employee_status form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", directory_employee_statuses_path, "post" do
    end
  end
end
