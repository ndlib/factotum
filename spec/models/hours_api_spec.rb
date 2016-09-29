require 'rails_helper'

describe HoursApi do

  let(:hours_api) { HoursApi.new(application_controller) }
  let(:service_points) { FactoryGirl.create_list(:service_point, 2) }
  let(:service_point) { FactoryGirl.create(:service_point) }

  let(:application_controller) {
                          ac = ApplicationController.new
                          allow(ac).to receive(:request).and_return(mock_request)
                          ac
  }

  let(:mock_request) {
                    r = double(ActionController::TestRequest)
                    allow(r).to receive(:protocol).and_return('http://')
                    allow(r).to receive(:host_with_port).and_return('test.host')
                    r
                  }

  describe "#service_points" do
    it "returns a list of all the service_points" do
      service_points

      expect(hours_api.service_points.size).to eq(service_points.size)
    end
  end


  describe "#service_point" do

    it "returns the service_point for specified id " do

      expect(hours_api.service_point(service_point.id)).to eq(service_point)
    end

  end


  describe "#api_services_from_request" do

    it "returns all the service points if no codes are specified" do
      service_points

      params = {}
      hours_api.api_services_from_request(params).size == service_points.size
    end


    it "returns just the service point specified in the codes" do
      params = { service_codes: service_points.first.code }

      hours_api.api_services_from_request(params).size == 1
      hours_api.api_services_from_request(params).first.id == service_points.first.id
    end


    it "returns each of the codes speificed in the csv list " do
      params = { service_codes: "#{service_points.first.code}, #{service_points.last.code}" }

      res = hours_api.api_services_from_request(params)
      res.size == 2
      res.first.id == service_points.first.id
      res.last.id  == service_points.first.id
    end
  end
end
