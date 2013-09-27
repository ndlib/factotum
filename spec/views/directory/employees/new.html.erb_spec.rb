require 'spec_helper'

describe "directory/employees/new" do
  before(:each) do
    assign(:directory_employee, stub_model(Directory::Employee).as_new_record)
  end

  it "renders new directory_employee form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", directory_employees_path, "post" do
    end
  end
end
