require "spec_helper"

describe "maps/call_number_ranges/edit.html.erb" do

  let(:call_number_range) { FactoryGirl.create(:call_number_range) }
  
  it "displays a form to create a new map file" do
    assign(:call_number_range, call_number_range)

    render

    expect(rendered).to match /form/
  end

end