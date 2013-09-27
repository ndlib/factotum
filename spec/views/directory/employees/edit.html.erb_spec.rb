require 'spec_helper'

describe "directory/employees/edit" do
  before(:each) do
    @directory_employee = assign(:directory_employee, stub_model(Directory::Employee))
  end

  it "renders the edit directory_employee form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", directory_employee_path(@directory_employee), "post" do
    end
  end
end
