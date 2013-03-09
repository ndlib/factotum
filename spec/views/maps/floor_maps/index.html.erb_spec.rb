require "spec_helper"

describe "maps/floor_maps/index.html.erb" do

  let(:floor_maps) { FactoryGirl.create_list(:floor_map, 2, building_id: building.id)}
  let(:building) { FactoryGirl.create(:building) }
  
  
  it "displays the current map files" do
    assign(:floor_maps, floor_maps)
    assign(:building, building)

    render

    rendered.should have_content(floor_maps.first.name)
  end

end