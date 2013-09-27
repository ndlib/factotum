require 'spec_helper'

describe "directory/employees/index" do
  before(:each) do
    assign(:directory_employees, [
      stub_model(Directory::Employee),
      stub_model(Directory::Employee)
    ])
  end

  it "renders a list of directory/employees" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
