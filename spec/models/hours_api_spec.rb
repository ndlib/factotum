require 'spec_helper'

describe HoursApi do

  let(:hours_api) { HoursApi.new }
  let(:service_points) { FactoryGirl.create_list(:service_point, 2) }
  let(:service_point) { FactoryGirl.create(:service_point) }

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
