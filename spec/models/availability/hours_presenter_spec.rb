require 'rails_helper'

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
      expect(regular_hours_presenter.effective_full_dates_text).to eq("Effective from #{regular_hours_presenter.start_date.to_s(:short_ordinal)} - #{regular_hours_presenter.end_date.to_s(:short_ordinal)}")
    end


    it "returns the short date if the end_date and the start_date are the same" do
      rh = regular_hours
      rh.start_date = 3.minutes.ago
      rh.end_date = 3.minutes.from_now
      rh.save!

      rhp = Availability::HoursPresenter.new(rh)
      expect(rhp.effective_full_dates_text).to eq("Effective on #{regular_hours_presenter.start_date.to_s(:short_ordinal)}")
    end


    it "it returns effective_short_dates_text" do
      expect(regular_hours_presenter.effective_short_dates_text).to eq("Effective on #{regular_hours_presenter.start_date.to_s(:short_ordinal)}")
    end

    describe "regular_hours" do

      describe "#use_full_effective_date?" do
        it " returns false " do
          expect(regular_hours_presenter.use_full_effective_date?).to be_falsey
        end
      end

      describe "#use_short_effective_date?" do

        it " returns false when the start date is in the past" do
          expect(regular_hours_presenter.use_short_effective_date?).to be_falsey
        end

        it " returns true when the start date is in the future" do
          rhp = regular_hours_presenter
          rhp.start_date = 15.days.from_now
          expect(rhp.use_short_effective_date?).to be_truthy
        end
      end
    end

    describe "hours exception_hours" do

      describe "#use_full_effective_date?" do
        it " returns true " do
          expect(exceptions_hours_presenter.use_full_effective_date?).to be_truthy
        end
      end

      describe "#use_short_effective_date?" do
        it " returns false " do
          expect(exceptions_hours_presenter.use_short_effective_date?).to be_falsey
        end
      end
    end
  end


  describe "regular_hours.to_json" do

    it "sends the name of the hours" do
      expect(result_json.has_key?(:name)).to be_truthy
      expect(result_json[:name]).to eql("Regular Hours")
    end


    it "sends the pretext" do
      expect(result_json.has_key?(:prepend_text)).to be_truthy
      expect(result_json[:prepend_text]).to eql('<p>Pretext</p>')
    end


    it "sends the append_text" do
      expect(result_json.has_key?(:append_text)).to be_truthy
      expect(result_json[:append_text]).to eql('<p>Posttext</p>')
    end


    it "sends the publish start date" do
      expect(result_json.has_key?(:publish_start_date)).to be_truthy
      expect(result_json[:publish_start_date]).to eq(ActiveSupport::JSON.decode(regular_hours.start_date.to_json))
    end


    it "sends the publish start date" do
      expect(result_json.has_key?(:publish_end_date)).to be_truthy
      expect(result_json[:publish_end_date]).to eq(ActiveSupport::JSON.decode(regular_hours.end_date.to_json))
    end


    describe "hours" do

      it "sends the hours" do
        expect(result_json[:hours].class).to eql(Array)
      end


      it "sends days and hours for each row " do
        result_json[:hours].each do | row |
          expect(row.has_key?(:days)).to be_truthy
          expect(row.has_key?(:hours)).to be_truthy
        end
      end


      it "merges multiday values into day1 - day2" do
        expect(result_json[:hours].first[:days]).to eql("Monday - Thursday")
      end
    end
  end


  describe "exception_hours.to_json" do

    it "sends the name of the hours" do
      expect(exception_result_json.has_key?(:name)).to be_truthy
      expect(exception_result_json[:name]).to eql("Exception Hours")
    end

    it "sends the pretext" do
      expect(exception_result_json.has_key?(:prepend_text)).to be_truthy
      expect(exception_result_json[:prepend_text]).to eql('<p>Pretext</p>')
    end

    it "sends the append_text" do
      expect(exception_result_json.has_key?(:append_text)).to be_truthy
      expect(exception_result_json[:append_text]).to eql('<p>Posttext</p>')
    end

    describe "hours" do
      it "sends the hours" do
        expect(exception_result_json[:hours].class).to eql(Array)
      end

      it "sends days and hours for each row " do
        exception_result_json[:hours].each do | row |
          expect(row.has_key?(:days)).to be_truthy
          expect(row.has_key?(:hours)).to be_truthy
        end
      end

      it "only has Friday Saturday and Sunday" do
        expect(exception_result_json[:hours][0][:days]).to eql("Friday")
        expect(exception_result_json[:hours][1][:days]).to eql("Saturday")
        expect(exception_result_json[:hours][2][:days]).to eql("Sunday")
      end
    end

  end
end
