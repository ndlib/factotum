require 'rails_helper'

describe Availability::ServicePointResultPresenter do

  let(:service_points) { FactoryGirl.create_list(:service_point, 3) }
  let(:services_presenter) { Availability::ServicePointResultPresenter.new(service_points, application_controller)}

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


  let(:result_json) { ActiveSupport::JSON.decode(services_presenter.to_json({})).with_indifferent_access }


  describe "#to_json" do

    it "returns a list of service_points " do
      expect(result_json.has_key?(:service_points)).to be_truthy
      expect(result_json[:service_points].class).to eq(ActiveSupport::HashWithIndifferentAccess)
      result_json[:service_points].has_key?('code1')
      result_json[:service_points].has_key?('code2')
      result_json[:service_points].has_key?('code3')
    end


    it "returns an hours template " do
      expect(result_json.has_key?(:page_builder_template)).to be_truthy
      expect(result_json[:page_builder_template]).to eq(services_presenter.send(:page_builder_template))
    end


    it "includes a link to the javascript for the hours" do
      expect(result_json.has_key?(:page_builder_js_file)).to be_truthy
      expect(result_json[:page_builder_js_file]).to eq("http://test.host/assets/hours_builder.js")
    end


    it "includes a link to the css for the hours" do
      expect(result_json.has_key?(:page_builder_css_file)).to be_truthy
      expect(result_json[:page_builder_css_file]).to eq("http://test.host/assets/hours_builder.css")
    end

    it "includes a js to load the hours into the page" do
      expect(result_json.has_key?(:page_builder_javascript_call_example)).to be_truthy
    end

  end

end
