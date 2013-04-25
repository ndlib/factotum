require 'spec_helper'

describe Availability::HoursPresenter do

  let(:service) { FactoryGirl.create(:service, name: 'ServicePoint', code: 'code', :regular_hours => [regular_hours], :hours_exception => [hours_exception]) }

  let(:regular_hours) { FactoryGirl.create(:regular_hours) }
  let(:hours_exception) { FactoryGirl.create(:hours_exception) }

  let(:regular_hours_presenter) { Availability::HoursPresenter.new(regular_hours) }
  let(:exceptions_hours_presenter) { Availability::HoursPresenter.new(hours_exception) }

  let(:result_json) { ActiveSupport::JSON.decode(regular_hours_presenter.to_json({})).with_indifferent_access }
  let(:exception_result_json) { ActiveSupport::JSON.decode(exceptions_hours_presenter.to_json({})).with_indifferent_access }


  describe "Effective Dates" do

    it "it returns full_effective_date" do
      regular_hours_presenter.effective_full_dates_text.should == "Effective from #{regular_hours_presenter.start_date.to_s(:short_ordinal)} - #{regular_hours_presenter.end_date.to_s(:short_ordinal)}"
    end


    it "it returns effective_short_dates_text" do
      regular_hours_presenter.effective_short_dates_text.should == "Effective on #{regular_hours_presenter.start_date.to_s(:short_ordinal)}"
    end

    describe "regular_hours" do

      describe :use_full_effective_date? do
        it " returns false " do
          regular_hours_presenter.use_full_effective_date?.should be_false
        end
      end

      describe :use_short_effective_date? do

        it " returns false when the start date is in the past" do
          regular_hours_presenter.use_short_effective_date?.should be_false
        end

        it " returns true when the start date is in the future" do
          rhp = regular_hours_presenter
          rhp.start_date = 15.days.from_now
          rhp.use_short_effective_date?.should be_true
        end
      end
    end

    describe "hours exception_hours" do

      describe :use_full_effective_date? do
        it " returns true " do
          exceptions_hours_presenter.use_full_effective_date?.should be_true
        end
      end

      describe :use_short_effective_date? do
        it " returns false " do
          exceptions_hours_presenter.use_short_effective_date?.should be_false
        end
      end
    end
  end


  describe "regular_hours.to_json" do

    it "sends the name of the hours" do
      result_json.has_key?(:name).should be_true
      result_json[:name].should eql("Regular Hours")
    end


    it "sends the pretext" do
      result_json.has_key?(:prepend_text).should be_true
      result_json[:prepend_text].should eql('<p>Pretext</p>')
    end


    it "sends the append_text" do
      result_json.has_key?(:append_text).should be_true
      result_json[:append_text].should eql('<p>Posttext</p>')
    end


    it "sends the publish start date" do
      result_json.has_key?(:publish_start_date).should be_true
      result_json[:publish_start_date].should == ActiveSupport::JSON.decode(regular_hours.start_date.to_json)
    end


    it "sends the publish start date" do
      result_json.has_key?(:publish_end_date).should be_true
      result_json[:publish_end_date].should == ActiveSupport::JSON.decode(regular_hours.end_date.to_json)
    end


    describe "hours" do

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
      exception_result_json[:prepend_text].should eql('<p>Pretext</p>')
    end

    it "sends the append_text" do
      exception_result_json.has_key?(:append_text).should be_true
      exception_result_json[:append_text].should eql('<p>Posttext</p>')
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
