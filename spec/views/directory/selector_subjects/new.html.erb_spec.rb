require 'spec_helper'

describe "directory/selector_subjects/new" do
  before(:each) do
    assign(:directory_selector_subject, stub_model(Directory::SelectorSubject).as_new_record)
  end

  it "renders new directory_selector_subject form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", directory_selector_subjects_path, "post" do
    end
  end
end
