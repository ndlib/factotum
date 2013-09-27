require 'spec_helper'

describe "directory/contact_informations/edit" do
  before(:each) do
    @directory_contact_information = assign(:directory_contact_information, stub_model(Directory::ContactInformation))
  end

  it "renders the edit directory_contact_information form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", directory_contact_information_path(@directory_contact_information), "post" do
    end
  end
end
