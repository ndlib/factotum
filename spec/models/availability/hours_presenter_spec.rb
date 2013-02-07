require 'spec_helper'

describe Availability::HoursPresenter do

  let(:service) { FactoryGirl.create(:service, name: 'ServicePoint', code: 'code', :regular_hours => [regular_hours], :hours_exception => [hours_exception]) }

  let(:regular_hours) {
    FactoryGirl.create(:regular_hours)
  }

  let(:hours_exception) {
    FactoryGirl.create(:hours_exception)
  }

  let(:regular_hours_presenter) { Availability::HoursPresenter.new(regular_hours) }
  let(:exceptions_hours_presenter) { Availability::HoursPresenter.new(hours_exception) }

  let(:result_json) { ActiveSupport::JSON.decode(regular_hours_presenter.to_json({})).with_indifferent_access }
  let(:exception_result_json) { ActiveSupport::JSON.decode(exceptions_hours_presenter.to_json({})).with_indifferent_access }

  describe "regular_hours.to_json" do

    it "sends the name of the hours" do
      result_json.has_key?(:name).should be_true
      result_json[:name].should eql("Regular Hours")
    end

    it "sends the pretext" do
      result_json.has_key?(:prepend_text).should be_true
      result_json[:prepend_text].should eql('Pretext')
    end

    it "sends the posttext" do
      result_json.has_key?(:postpend_text).should be_true
      result_json[:postpend_text].should eql('Posttext')
    end

    describe "availability" do
      it "sends the hours" do
        result_json[:hours].class.should eql(Array)
      end

      it "sends days and hours for each row " do
        result_json[:hours].each do | row |
          row.has_key?(:days).should be_true
          row.has_key?(:hours).should be_true
        end
      end

      it "merges multiday values into day1 - day2" do
        result_json[:hours].first[:days].should eql("Monday - Thursday")
      end
    end
  end


  describe "exception_hours.to_json" do

    it "sends the name of the hours" do
      exception_result_json.has_key?(:name).should be_true
      exception_result_json[:name].should eql("Exception Hours")
    end

    it "sends the pretext" do
      exception_result_json.has_key?(:prepend_text).should be_true
      exception_result_json[:prepend_text].should eql('Pretext')
    end

    it "sends the posttext" do
      exception_result_json.has_key?(:postpend_text).should be_true
      exception_result_json[:postpend_text].should eql('Posttext')
    end

    describe "hours" do
      it "sends the hours" do
        exception_result_json[:hours].class.should eql(Array)
      end

      it "sends days and hours for each row " do
        exception_result_json[:hours].each do | row |
          row.has_key?(:days).should be_true
          row.has_key?(:hours).should be_true
        end
      end

      it "only has Friday Saturday and Sunday" do
        exception_result_json[:hours][0][:days].should eql("Friday")
        exception_result_json[:hours][1][:days].should eql("Saturday")
        exception_result_json[:hours][2][:days].should eql("Sunday")
      end
    end

  end
end