require "spec_helper"

describe "maps/map_files/edit.html.erb" do

  let(:map_file) { FactoryGirl.create(:map_file) }
  
  it "displays a form to create a new map file" do
    assign(:map_file, map_file)

    render

    rendered.should match /form/
  end

end