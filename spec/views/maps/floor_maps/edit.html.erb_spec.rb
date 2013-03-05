require "spec_helper"

describe "maps/floor_maps/edit.html.erb" do

  let(:floor_map) { FactoryGirl.create(:floor_map) }
  
  it "displays a form to create a new map file" do
    assign(:floor_map, floor_map)

    render

    rendered.should match /form/
  end

end