require "spec_helper"

describe "maps/call_number_ranges/new.html.erb" do

  let(:floor_map) { FactoryGirl.create(:floor_map)}
  
  it "displays a form to create a new map file" do
    assign(:call_number_range, floor_map.new_call_number_range)

    render

    rendered.should match /form/
  end

end