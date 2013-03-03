require "spec_helper"

describe "maps/map_files/new.html.erb" do

  let(:building) {FactoryGirl.create(:building)}

  
  it "displays a form to create a new map file" do
    assign(:map_file, building.new_map_file)

    render

    rendered.should match /form/
  end

end