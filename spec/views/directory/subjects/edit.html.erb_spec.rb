require 'spec_helper'

describe "directory/subjects/edit" do
  before(:each) do
    @directory_subject = assign(:directory_subject, stub_model(Directory::Subject))
  end

  it "renders the edit directory_subject form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", directory_subject_path(@directory_subject), "post" do
    end
  end
end
