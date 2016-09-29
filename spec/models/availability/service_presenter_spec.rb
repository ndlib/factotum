require 'rails_helper'

describe Availability::ServicePointPresenter do

  let(:service_point) { FactoryGirl.create(:service_point, name: 'ServicePoint', code: 'code', primary_contact_netid: 'netid', primary_email: 'email', primary_phone: 'phone') }
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

  describe "#to_json" do

    it "returns the name of the service" do
      expect(result_json.has_key?(:name)).to eql(true)
      expect(result_json[:name]).to eql('ServicePoint')
    end


    it "returns the code for the service" do
      expect(result_json.has_key?(:code)).to be_truthy
      expect(result_json[:code]).to eql('code')
    end


    it "returns the contact for the service" do
      expect(result_json.has_key?(:contact)).to be_truthy
      expect(result_json[:contact]).to eql('netid')
    end


    it "returns the email for the service" do
      expect(result_json.has_key?(:email)).to be_truthy
      expect(result_json[:email]).to eql('email')
    end


    it "returns the phone for the service" do
      expect(result_json.has_key?(:phone)).to be_truthy
      expect(result_json[:phone]).to eql('phone')
    end


    it "includes the hours for the service " do
      expect(result_json.has_key?(:regular_hours)).to eql(true)
    end


    it "includes the upcoming_hours for the service " do
      expect(result_json.has_key?(:next_regular_hours)).to eql(true)
    end


    it "includes the exceptions if there are any" do
      expect(result_json.has_key?(:hours_exceptions)).to eql(true)
    end

  end

  it "should return a message if there are no pulished regular hours" do
    expect(result_json[:regular_hours]).to eq({"hours"=>[]})
  end


  describe '#no_current_hours?' do

    it "returns true when there are no hours for the current date" do
      sp = service_presenter
      sp.regular_hours << far_future_hours
      sp.save!

      expect(sp.no_current_hours?).to be_truthy
    end

    it "returns false when there are hours for the current date" do
      sp = service_presenter
      sp.regular_hours << current_hours
      sp.save!

      expect(sp.no_current_hours?).to be_falsey
    end

  end


  describe "gap_in_regular_hours?" do

    it "returns true if there is a gap somewhere in the regular hours records" do
      sp = service_presenter
      sp.regular_hours = [ current_hours, far_future_hours ]
      sp.save!

      expect(sp.gap_in_regular_hours?).to be_truthy
    end

    it "returns false if there is not a gap in the regular hours " do
      sp = service_presenter
      sp.regular_hours = [ current_hours, continuos_hours ]
      sp.save!

      expect(sp.gap_in_regular_hours?).to be_falsey

    end
  end


  describe "#gap_between_regular_hours?" do
    it "returns true if there is gap between the 2 records passed in" do
      expect(service_presenter.gap_between_regular_hours?(far_future_hours, current_hours)).to be_truthy
    end


    it "returns false if there is not a gap between the 2 records passed in" do
      expect(service_presenter.gap_between_regular_hours?(current_hours, continuos_hours)).to be_falsey
    end

  end


  describe "#current_hours" do

    it "returns nil if there are no recent hours and no current hours " do
      sp = service_presenter
      sp.regular_hours = [ far_future_hours ]
      sp.save!

      expect(sp.send(:current_hours)).to be_nil
    end


    it "returns the current hours" do
      sp = service_presenter
      sp.regular_hours = [ current_hours, far_future_hours ]
      sp.save!

      expect(sp.send(:current_hours)).to eq(current_hours)
    end


    it "falls back on the most recent regular hours if there are no current hours" do
      sp = service_presenter
      sp.regular_hours = [ past_hours, far_future_hours ]
      sp.save!

      expect(sp.send(:current_hours)).to eq(past_hours)
    end
  end


  describe "#regular_hours_data" do

    it "falls back on the most recent regular hours if there are no current hours" do
      sp = service_presenter
      sp.regular_hours = [ past_hours, far_future_hours ]
      sp.save!

      expect(sp.send(:regular_hours_data)[:hours]).to eq(Availability::HoursPresenter.new(past_hours).data[:hours])
    end
  end


end
