require "spec_helper"

describe "availability/hours/index.html.erb" do
  let(:service_point) {
    FactoryGirl.create(:service_point, regular_hours: [ current_hours ], hours_exceptions: [current_exception] )
  }

  let(:current_hours) {
    FactoryGirl.create(:regular_hours)
  }

  let(:current_exception) {
    FactoryGirl.create(:hours_exception)
  }

  it "displays the service point" do
    assign(:service_point, service_point)

    render

    rendered.should have_content(service_point.name)
  end

  it "displays the service point's regular hours " do
    assign(:service_point, service_point)

    render

    rendered.should have_content(service_point.regular_hours.first.name)
  end

  it "displays the service point's hours exceptions " do

    assign(:service_point, service_point)

    render

    rendered.should have_content(service_point.hours_exceptions.first.name)

  end

end