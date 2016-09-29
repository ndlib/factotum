require 'rails_helper'

describe Availability::ServicePointResultPresenter do

  let(:service_points) { FactoryGirl.create_list(:service_point, 3) }
  let(:services_presenter) { Availability::ServicePointResultPresenter.new(service_points, application_controller)}

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


  let(:result_json) { ActiveSupport::JSON.decode(services_presenter.to_json({})).with_indifferent_access }


  describe :to_json do

    it "returns a list of service_points " do
      result_json.has_key?(:service_points).should be_true
      result_json[:service_points].class.should == ActiveSupport::HashWithIndifferentAccess
      result_json[:service_points].has_key?('code1')
      result_json[:service_points].has_key?('code2')
      result_json[:service_points].has_key?('code3')
    end


    it "returns an hours template " do
      result_json.has_key?(:page_builder_template).should be_true
      result_json[:page_builder_template].should == services_presenter.send(:page_builder_template)
    end


    it "includes a link to the javascript for the hours" do
      result_json.has_key?(:page_builder_js_file).should be_true
      result_json[:page_builder_js_file].should == "http://test.host/assets/hours_builder.js"
    end


    it "includes a link to the css for the hours" do
      result_json.has_key?(:page_builder_css_file).should be_true
      result_json[:page_builder_css_file].should == "http://test.host/assets/hours_builder.css"
    end

    it "includes a js to load the hours into the page" do
      result_json.has_key?(:page_builder_javascript_call_example).should be_true
    end

  end

end
