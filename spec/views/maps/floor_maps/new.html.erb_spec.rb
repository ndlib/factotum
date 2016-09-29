require "spec_helper"

describe "maps/floor_maps/new.html.erb" do

  let(:building) {FactoryGirl.create(:building)}

  
  it "displays a form to create a new map file" do
    assign(:floor_map, building.new_floor_map)

    render

    expect(rendered).to match /form/
  end

end