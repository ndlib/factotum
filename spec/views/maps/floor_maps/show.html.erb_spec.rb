require "spec_helper"

describe "maps/floor_maps/show.html.erb" do

  let(:floor_map) { FactoryGirl.create(:floor_map) }
  
  it "displays a show page for a floor map" do
    assign(:floor_map, floor_map)

    render
  end

end