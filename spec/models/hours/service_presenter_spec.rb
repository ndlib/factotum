require 'spec_helper'

describe Hours::ServicePresenter do

  let(:service) { FactoryGirl.create(:service, name: 'Service', code: 'code') }

  let(:service_presenter) { Hours::ServicePresenter.new(service) }
  let(:result_json) { ActiveSupport::JSON.decode(service_presenter.to_json({})).with_indifferent_access }


  describe :to_json do

    it "returns the name of the service" do
      result_json.has_key?(:name).should eql(true)
      result_json[:name].should eql('Service')
    end

    it "returns the code for the service" do
      result_json.has_key?(:code).should be_true
      result_json[:code].should eql('code')
    end


    it "includes the hours for the service " do
      result_json.has_key?(:regular_hours).should eql(true)
    end


    it "includes the exceptions if there are any" do
      result_json.has_key?(:hours_exceptions).should eql(true)
    end

  end

  it "should return a message if there are no active regular hours" do
    result_json[:regular_hours].should == {"hours"=>[]}
  end

end