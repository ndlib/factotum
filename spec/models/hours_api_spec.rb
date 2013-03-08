require 'spec_helper'

describe HoursApi do

  let(:hours_api) { HoursApi.new(application_controller) }
  let(:service_points) { FactoryGirl.create_list(:service_point, 2) }
  let(:service_point) { FactoryGirl.create(:service_point) }

  let(:application_controller) {
                          ac = ApplicationController.new
                          ac.stub(:request).and_return(mock_request)
                          ac
  }

  let(:mock_request) {
                    r = mock(ActionController::TestRequest)
                    r.stub(:protocol).and_return('http://')
                    r.stub(:host_with_port).and_return('test.host')
                    r
                  }

  describe :service_points do
    it "returns a list of all the service_points" do
      service_points

      hours_api.service_points.size.should == service_points.size
    end
  end


  describe :service_point do

    it "returns the service_point for specified id " do

      hours_api.service_point(service_point.id).should == service_point
    end

  end
end
