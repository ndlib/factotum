require 'spec_helper'

describe "directory/selector_subjects/edit" do
  before(:each) do
    @directory_selector_subject = assign(:directory_selector_subject, stub_model(Directory::SelectorSubject))
  end

  it "renders the edit directory_selector_subject form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", directory_selector_subject_path(@directory_selector_subject), "post" do
    end
  end
end
