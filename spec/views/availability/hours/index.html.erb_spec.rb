require "spec_helper"

describe "availability/hours/index.html.erb" do
  let(:service_point) {
    FactoryGirl.create(:service_point, regular_hours: [ current_hours ], hours_exceptions: [current_exception] )
  }

  let(:current_hours) {
    FactoryGirl.create(:regular_hours)
  }

  let(:far_future_hours) {
    FactoryGirl.create(:regular_hours, start_date: 1.year.from_now, end_date: 2.years.from_now)
  }

  let(:current_exception) {
    FactoryGirl.create(:hours_exception)
  }

  let(:hours_api) { HoursApi.new(ApplicationController.new)}

  it "displays the service point" do
    assign(:service_point, hours_api.service_point(service_point.id))

    render

    rendered.should have_content(service_point.name)
  end

  it "displays the service point's regular hours " do
    assign(:service_point, hours_api.service_point(service_point.id))

    render

    rendered.should have_content(service_point.regular_hours.first.name)
  end

  it "displays the service point's hours exceptions " do

    assign(:service_point, hours_api.service_point(service_point.id))

    render

    rendered.should have_content(service_point.hours_exceptions.first.name)
  end


  it "displays an error when the regular hours publish dates are not continous" do
    sp = FactoryGirl.create(:service_point, regular_hours: [ current_hours, far_future_hours ], hours_exceptions: [current_exception] )

    assign(:service_point, hours_api.service_point(sp.id))

    render

    rendered.should have_selector("tr.error td.alert")
  end


  it "displays an error when there are no regular hours for the current date  " do
    sp = FactoryGirl.create(:service_point, regular_hours: [ far_future_hours ], hours_exceptions: [current_exception] )

    assign(:service_point, hours_api.service_point(sp.id))

    render

    rendered.should have_selector("tr.error td.alert")
  end

end
