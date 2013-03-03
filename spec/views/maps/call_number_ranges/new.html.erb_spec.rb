require "spec_helper"

describe "maps/call_number_ranges/new.html.erb" do

  let(:map_file) { FactoryGirl.create(:map_file)}
  
  it "displays a form to create a new map file" do
    assign(:call_number_range, map_file.new_call_number_range)

    render

    rendered.should match /form/
  end

end