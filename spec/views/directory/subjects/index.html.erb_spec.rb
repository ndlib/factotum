require 'spec_helper'

describe "directory/subjects/index" do
  before(:each) do
    assign(:directory_subjects, [
      stub_model(Directory::Subject),
      stub_model(Directory::Subject)
    ])
  end

  it "renders a list of directory/subjects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
