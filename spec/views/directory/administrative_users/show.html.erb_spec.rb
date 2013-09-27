require 'spec_helper'

describe "directory/administrative_users/show" do
  before(:each) do
    @directory_administrative_user = assign(:directory_administrative_user, stub_model(Directory::AdministrativeUser))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
