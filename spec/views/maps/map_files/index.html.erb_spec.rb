require "spec_helper"

describe "maps/map_files/index.html.erb" do

  let(:map_files) { FactoryGirl.create_list(:map_file, 2)}
  
  
  it "displays the current map files" do
    assign(:map_files, map_files)

    render

    rendered.should have_content(map_files.first.name)
  end

end