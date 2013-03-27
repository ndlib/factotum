require "spec_helper"

describe "availability/service_points/edit.html.erb" do
  let(:service_point) {
    FactoryGirl.create(:service_point, :regular_hours => [ current_hours] )
  }

  let(:current_hours) {
    FactoryGirl.create(:regular_hours)
  }

  it "displays the edit form" do
    assign(:service_point, service_point)
    controller.request.path_parameters[:id] = service_point.id

    render

    rendered.should match /form/
  end
end
