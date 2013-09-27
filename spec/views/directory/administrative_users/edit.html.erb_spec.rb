require 'spec_helper'

describe "directory/administrative_users/edit" do
  before(:each) do
    @directory_administrative_user = assign(:directory_administrative_user, stub_model(Directory::AdministrativeUser))
  end

  it "renders the edit directory_administrative_user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", directory_administrative_user_path(@directory_administrative_user), "post" do
    end
  end
end
