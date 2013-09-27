require 'spec_helper'

describe "directory/subjects/show" do
  before(:each) do
    @directory_subject = assign(:directory_subject, stub_model(Directory::Subject))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
