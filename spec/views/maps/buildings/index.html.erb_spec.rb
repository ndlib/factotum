require "spec_helper"
 
describe "maps/buildings/index.html.erb" do

  let(:buildings) { FactoryGirl.create_list(:building, 3) }
  
  
  it "displays the current map files" do
    assign(:buildings, buildings)

    render

    rendered.should have_content(buildings.first.name)
  end

end