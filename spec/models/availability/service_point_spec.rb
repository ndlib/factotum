require 'rails_helper'
require 'ostruct'

describe Availability::ServicePoint do

  let(:service) {
    FactoryGirl.create(:service_point, :code => 'code', :regular_hours => [ current_hours, next_hours], :hours_exceptions => [current_exceptions, next_exceptions])
  }

  let(:current_hours) {
    FactoryGirl.create(:regular_hours, :name => 'School Year Hours', :start_date => 10.days.ago, :end_date => 10.days.from_now)
  }

  let(:previous_hours) {
    FactoryGirl.create(:regular_hours, :name => 'School Year Hours', :start_date => 100.days.ago, :end_date => 11.days.ago)
  }

  let(:next_hours) {
    FactoryGirl.create(:regular_hours, :name => 'Summer Hours', :start_date => 11.days.from_now, :end_date => 20.days.from_now)
  }

  let(:current_exceptions) {
    FactoryGirl.create(:hours_exception, :start_date => 1.month.ago, :end_date => 9.days.from_now)
  }

  let(:next_exceptions) {
    FactoryGirl.create(:hours_exception, :start_date => 10.days.from_now, :end_date => 1.month.from_now)
  }

  let(:previous_exceptions) {
    FactoryGirl.create(:hours_exception, :start_date => 10.months.ago, :end_date => 1.month.ago)
  }

  let(:new_hours_params) { { prepend_text: "Pretext", append_text: "Posttext", monday: "Open 24 hours", tuesday: "Open 24 hours", wednesday: "Open 24 hours", thursday: "Open 24 hours", friday: "Open till 10pm", saturday: "9am - 7pm", sunday: "Opens at 10am", name: "School Year Hours", start_date: 5.months.ago, end_date: 2.months.from_now } }
  let(:new_hours_exception_params) { { name: "Easter Hours", friday: 'Open till 6pm', saturday: '10am - 5pm', sunday: 'Noon - Midnight', prepend_text: 'Easter Hours are as follows', start_date: 1.day.ago, end_date: 4.days.from_now } }

  describe "#validations" do

    it "forces code to be unique" do
      s = FactoryGirl.create(:service_point)
      s2 = FactoryGirl.build(:service_point, code: s.code)
      expect(s2.valid?).to be_falsey
    end
  end


  describe "next_regular_hours" do

    it "returns the next regular hours "  do
      expect(service.next_regular_hours).to eq(next_hours)
    end


    it "returns nil if there is not a next hours" do
      service = FactoryGirl.create(:service_point, :code => 'code', :regular_hours => [ current_hours])
      expect(service.next_regular_hours).to eq(nil)
    end

  end


  describe "search" do
    before(:each) do
      FactoryGirl.create(:service_point, :code => 'code_11')
      FactoryGirl.create(:service_point, :code => 'code_22')
      FactoryGirl.create(:service_point, :code => 'code_33')
    end

    it "returns all the service_points when no code is passed in" do
      expect(Availability::ServicePoint.search("").size).to eq(3)
    end

    it "takes a string of csv codes and returns those service_points" do
      result = Availability::ServicePoint.search("code_22, code_33")
      expect(result.size).to eq(2)
    end

    it "takes an array of csv codes and returns those service_points" do
      result = Availability::ServicePoint.search(['code_11', 'code_33'])
      expect(result.size).to eq(2)
     end
  end


  describe "building" do
    it "has a building associated" do
      expect(service.respond_to?(:building)).to be_truthy
    end
  end


  describe "regular availability searching" do

    it "finds the regular hours for a specific date" do
      expect(service.regular_hours_for_date(Time.zone.today)).to eq(current_hours)
      expect(service.regular_hours_for_date(12.days.from_now)).to eq(next_hours)
    end


    it "finds the upcoming hours for a specific date " do
      hours = service.upcoming_regular_hours(Time.zone.today)
      expect(hours.include?(next_hours)).to eq(true)
      expect(hours.include?(current_hours)).to eq(true)
      expect(hours.include?(previous_hours)).to eq(false)
    end
  end


  describe "exceptions search " do

    it "finds the exception hours for a specific date " do
      expect(service.hours_exceptions_for_date(Time.zone.today)).to eq([current_exceptions])
      expect(service.hours_exceptions_for_date(11.days.from_now)).to eq([next_exceptions])
    end


    it "includes exceptions that have start dates within 9 days of the starting date" do
      s = service
      included_exception = FactoryGirl.create(:hours_exception, :start_date => 8.days.from_now, :end_date => 1.month.from_now)
      s.hours_exceptions << included_exception
      s.save!
      s.reload()

      expect(s.hours_exceptions_for_date(Time.zone.today)).to eq([current_exceptions, included_exception])
      expect(s.hours_exceptions_for_date(11.days.from_now)).to eq([next_exceptions, included_exception])
    end


    it "finds the upcoming exceptions " do
      hours = service.upcoming_hours_exceptions(Time.zone.today)
      expect(hours.include?(next_exceptions)).to eq(true)
      expect(hours.include?(current_exceptions)).to eq(true)
      expect(hours.include?(previous_exceptions)).to eq(false)
    end
  end


  it "has no regular hours" do
    s = FactoryGirl.create(:service_point)
    expect(s.regular_hours).to be_empty
  end


  describe "new availability " do

    it "returns a new hours" do
      hours = service.new_hours(new_hours_params)

      expect(hours.class).to eql(service.send(:hours_source))
    end
  end


  describe "new availability exception" do

    it "returns a new hours exception " do
      exception = service.new_hours_exception(new_hours_exception_params)

      expect(exception.class).to eql(service.send(:hours_exception_source))
    end
  end


  describe "copy ssi" do

    it "copies ssi files if the hours are current hours" do
      expect_any_instance_of(SSIFileCopier).to receive(:copy_all)
      service.send(:write_and_copy_ssi, current_hours)
    end

  end


  describe "update availability" do
    it "is able to save the hours"

  end

end
