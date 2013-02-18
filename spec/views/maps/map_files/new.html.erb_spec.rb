require "spec_helper"

describe "maps/map_files/new.html.erb" do

  let(:map_api) { MapsApi.new }
  let(:new_map_file) { map_api.map_file }
  
  
  it "displays a form to create a new map file" do
    assign(:map_file, new_map_file)

    render

    rendered.should match /form/
  end

end