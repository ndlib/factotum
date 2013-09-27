require 'spec_helper'

describe "directory/contact_informations/new" do
  before(:each) do
    assign(:directory_contact_information, stub_model(Directory::ContactInformation).as_new_record)
  end

  it "renders new directory_contact_information form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", directory_contact_informations_path, "post" do
    end
  end
end
