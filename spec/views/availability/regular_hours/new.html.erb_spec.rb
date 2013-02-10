require "spec_helper"

describe "availability/regular_hours/new.html.erb" do
  let(:service_point) {
    FactoryGirl.create(:service_point, regular_hours: [ current_hours ], hours_exceptions: [current_exception] )
  }

  let(:current_hours) {
    FactoryGirl.create(:regular_hours)
  }

  let(:current_exception) {
    FactoryGirl.create(:hours_exception)
  }

  it "renders correctly" do
    assign(:hours, service_point.clone_or_build_regular_hours(nil))

    render

  end

end