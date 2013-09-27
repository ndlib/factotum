require 'spec_helper'

describe "directory/selector_subjects/show" do
  before(:each) do
    @directory_selector_subject = assign(:directory_selector_subject, stub_model(Directory::SelectorSubject))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
