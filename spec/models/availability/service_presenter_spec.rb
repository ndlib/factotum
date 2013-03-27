require 'spec_helper'

describe Availability::ServicePointPresenter do

  let(:service_point) { FactoryGirl.create(:service_point, name: 'ServicePoint', code: 'code') }
  let(:service_presenter) { Availability::ServicePointPresenter.new(service_point) }

  let(:result_json) { ActiveSupport::JSON.decode(service_presenter.to_json({})).with_indifferent_access }

  let(:current_hours) {
    FactoryGirl.create(:regular_hours)
  }

  let(:far_future_hours) {
    FactoryGirl.create(:regular_hours, start_date: 1.year.from_now, end_date: 2.years.from_now)
  }

  let(:past_hours) {
    FactoryGirl.create(:regular_hours, start_date: 3.years.ago, end_date: 1.years.ago)
  }

  let(:continuos_hours) { FactoryGirl.create(:regular_hours, start_date: current_hours.end_date + 1.day, end_date: 3.years.from_now) }

  describe :to_json do

    it "returns the name of the service" do
      result_json.has_key?(:name).should eql(true)
      result_json[:name].should eql('ServicePoint')
    end

    it "returns the code for the service" do
      result_json.has_key?(:code).should be_true
      result_json[:code].should eql('code')
    end


    it "includes the hours for the service " do
      result_json.has_key?(:regular_hours).should eql(true)
    end


    it "includes the upcoming_hours for the service " do
      result_json.has_key?(:upcoming_regular_hours).should eql(true)
    end


    it "includes the exceptions if there are any" do
      result_json.has_key?(:hours_exceptions).should eql(true)
    end

  end

  it "should return a message if there are no pulished regular hours" do
    result_json[:regular_hours].should == {"hours"=>[]}
  end


  describe '#no_current_hours?' do

    it "returns true when there are no hours for the current date" do
      sp = service_presenter
      sp.regular_hours << far_future_hours
      sp.save!

      sp.no_current_hours?.should be_true
    end

    it "returns false when there are hours for the current date" do
      sp = service_presenter
      sp.regular_hours << current_hours
      sp.save!

      sp.no_current_hours?.should be_false
    end

  end


  describe "gap_in_regular_hours?" do

    it "returns true if there is a gap somewhere in the regular hours records" do
      sp = service_presenter
      sp.regular_hours = [ current_hours, far_future_hours ]
      sp.save!

      sp.gap_in_regular_hours?.should be_true
    end

    it "returns false if there is not a gap in the regular hours " do
      sp = service_presenter
      sp.regular_hours = [ current_hours, continuos_hours ]
      sp.save!

      sp.gap_in_regular_hours?.should be_false

    end
  end


  describe "#gap_between_regular_hours?" do
    it "returns true if there is gap between the 2 records passed in" do
      service_presenter.gap_between_regular_hours?(far_future_hours, current_hours).should be_true
    end


    it "returns false if there is not a gap between the 2 records passed in" do
      service_presenter.gap_between_regular_hours?(current_hours, continuos_hours).should be_false
    end

  end


  describe "#current_hours" do

    it "returns nil if there are no recent hours and no current hours " do
      sp = service_presenter
      sp.regular_hours = [ far_future_hours ]
      sp.save!

      sp.send(:current_hours).should be_nil
    end

    it "returns the current hours" do
      sp = service_presenter
      sp.regular_hours = [ current_hours, far_future_hours ]
      sp.save!

      sp.send(:current_hours).should == current_hours
    end


    it "falls back on the most recent regular hours if there are no current hours" do
      sp = service_presenter
      sp.regular_hours = [ past_hours, far_future_hours ]
      sp.save!

      sp.send(:current_hours).should == past_hours
    end
  end
end
