require 'spec_helper'

describe "directory/administrative_users/index" do
  before(:each) do
    assign(:directory_administrative_users, [
      stub_model(Directory::AdministrativeUser),
      stub_model(Directory::AdministrativeUser)
    ])
  end

  it "renders a list of directory/administrative_users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
