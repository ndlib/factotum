require 'spec_helper'

describe "directory/selector_subjects/index" do
  before(:each) do
    assign(:directory_selector_subjects, [
      stub_model(Directory::SelectorSubject),
      stub_model(Directory::SelectorSubject)
    ])
  end

  it "renders a list of directory/selector_subjects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
