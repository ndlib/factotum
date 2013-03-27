require "spec_helper"

describe "availability/service_points/index.html.erb" do
  let(:service_point) {
    Availability::ServicePointPresenter.new(FactoryGirl.create(:service_point, :regular_hours => [ current_hours] ), ApplicationController.new)
  }

  let(:current_hours) {
    FactoryGirl.create(:regular_hours)
  }

  it "displays all the service points" do
    service_points = [ service_point, service_point ]
    assign(:service_points, service_points)

    render

    rendered.should have_content(service_points.first.name)
    rendered.should have_content(service_points.last.name)
  end

  it "displays the current hours for the service point"

  it "displays the current user notifications "
end
