require 'spec_helper'

describe Hours::ServiceResultPresenter do

  before(:each) do
    FactoryGirl.create(:service, :code => 'code1')
    FactoryGirl.create(:service, :code => 'code2')
    FactoryGirl.create(:service, :code => 'code3')
  end

  let(:services) { Hours::Service.all }
  let(:services_presenter) { Hours::ServiceResultPresenter.new(services, request_mock)}
  let(:request_mock) { double( protocol: 'http://', host_with_port: 'localhost:3000') }
  let(:result_json) { ActiveSupport::JSON.decode(services_presenter.to_json({})).with_indifferent_access }


  describe to_json do

    it "returns a list of services " do
      result_json.has_key?(:services).should be_true
      result_json[:services].class.should == ActiveSupport::HashWithIndifferentAccess
      result_json[:services].has_key?('code1')
      result_json[:services].has_key?('code2')
      result_json[:services].has_key?('code3')
    end


    it "returns an hours template " do
      result_json.has_key?(:page_builder_template).should be_true
      result_json[:page_builder_template].should == services_presenter.send(:page_builder_template)
    end


    it "includes a link to the javascript for the hours" do
      result_json.has_key?(:page_builder_js_file).should be_true
      result_json[:page_builder_js_file].should == "http://localhost:3000/assets/hours_builder.js"
    end


    it "includes a link to the css for the hours" do
      result_json.has_key?(:page_builder_css_file).should be_true
      result_json[:page_builder_css_file].should == "http://localhost:3000/assets/hours_builder.css"
    end

    it "includes a js to load the hours into the page" do
      result_json.has_key?(:page_builder_javascript_call_example).should be_true
    end

  end

end