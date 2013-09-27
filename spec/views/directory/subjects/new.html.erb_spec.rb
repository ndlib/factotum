require 'spec_helper'

describe "directory/subjects/new" do
  before(:each) do
    assign(:directory_subject, stub_model(Directory::Subject).as_new_record)
  end

  it "renders new directory_subject form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", directory_subjects_path, "post" do
    end
  end
end
