require 'spec_helper'

describe "directory/administrative_users/new" do
  before(:each) do
    assign(:directory_administrative_user, stub_model(Directory::AdministrativeUser).as_new_record)
  end

  it "renders new directory_administrative_user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", directory_administrative_users_path, "post" do
    end
  end
end
