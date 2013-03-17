require "spec_helper"

describe "availability/service_points_print/show.html.erb" do
  let(:service_point) {
    FactoryGirl.create(:service_point, :regular_hours => [ current_hours] )
  }

  let(:current_hours) {
    FactoryGirl.create(:regular_hours)
  }

  let(:hours_api) { HoursApi.new(ApplicationController.new)}

  it "displays the service point" do
    assign(:service_point, hours_api.service_point(service_point.id))

    controller.request.path_parameters[:id] = service_point.id

    render

    rendered.should have_content(service_point.name)
  end
end
