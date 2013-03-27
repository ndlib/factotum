require 'spec_helper'

describe Availability::Hours do
  let(:regular_hours) { FactoryGirl.create(:regular_hours) }
  let(:hours_exception) { FactoryGirl.create(:hours_exception) }

  describe "regular_hours" do

    it "requires start_date" do
      rh = FactoryGirl.create(:regular_hours)

      rh.valid?.should be_true
      rh.start_date = nil
      rh.valid?.should be_false
    end

    it "requires end_date" do
      rh = FactoryGirl.create(:regular_hours)

      rh.valid?.should be_true
      rh.end_date = nil
      rh.valid?.should be_false
    end

    it "requires monday" do
      rh = FactoryGirl.create(:regular_hours)

      rh.valid?.should be_true
      rh.monday = nil
      rh.valid?.should be_false
    end

    it "requires tuesday" do
      rh = FactoryGirl.create(:regular_hours)

      rh.valid?.should be_true
      rh.tuesday = nil
      rh.valid?.should be_false
    end

    it "requires wednesday" do
      rh = FactoryGirl.create(:regular_hours)

      rh.valid?.should be_true
      rh.wednesday = nil
      rh.valid?.should be_false
    end

    it "requires thursday" do
      rh = FactoryGirl.create(:regular_hours)

      rh.valid?.should be_true
      rh.thursday = nil
      rh.valid?.should be_false
    end

    it "requires friday" do
      rh = FactoryGirl.create(:regular_hours)

      rh.valid?.should be_true
      rh.friday = nil
      rh.valid?.should be_false
    end

    it "requires saturday" do
      rh = FactoryGirl.create(:regular_hours)

      rh.valid?.should be_true
      rh.saturday = nil
      rh.valid?.should be_false
    end

    it "requires sunday" do
      rh = FactoryGirl.create(:regular_hours)

      rh.valid?.should be_true
      rh.sunday = nil
      rh.valid?.should be_false
    end

  end

  describe "exception hours" do
    it "is required" do
      rh = FactoryGirl.create(:hours_exception)
      rh.valid?.should be_true
      rh.start_date = nil
      rh.valid?.should be_false
    end

    it "is required" do
      rh = FactoryGirl.create(:hours_exception)

      rh.valid?.should be_true
      rh.end_date = nil
      rh.valid?.should be_false
    end

    it "does not require monday" do
      rh = FactoryGirl.create(:hours_exception)

      rh.valid?.should be_true
      rh.monday = nil
      rh.valid?.should be_true
    end

    it "does not require tuesday" do
      rh = FactoryGirl.create(:hours_exception)

      rh.valid?.should be_true
      rh.tuesday = nil
      rh.valid?.should be_true
    end

    it "does not require wednesday" do
      rh = FactoryGirl.create(:hours_exception)

      rh.valid?.should be_true
      rh.wednesday = nil
      rh.valid?.should be_true
    end

    it "does not require thursday" do
      rh = FactoryGirl.create(:hours_exception)

      rh.valid?.should be_true
      rh.thursday = nil
      rh.valid?.should be_true
    end

    it "does not require friday" do
      rh = FactoryGirl.create(:hours_exception)

      rh.valid?.should be_true
      rh.friday = nil
      rh.valid?.should be_true
    end

    it "does not require saturday" do
      rh = FactoryGirl.create(:hours_exception)

      rh.valid?.should be_true
      rh.saturday = nil
      rh.valid?.should be_true
    end

    it "does not require sunday" do
      rh = FactoryGirl.create(:hours_exception)

      rh.valid?.should be_true
      rh.sunday = nil
      rh.valid?.should be_true
    end

  end


  describe "hours" do
    # this is also tested in hours_output_generator_spec.rb

  end


  describe "hours=" do
    # this is also tested in hours_params_parser_spec.rb

    it "resets all the existing hours" do
      rh = hours_exception

      ['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday'].each do | day |
        rh.send("#{day}=", "something")
      end

      hash = {
        :start_day => [''],
        :end_day => [''],
        :hours => ['']
      }

      rh.hours = hash

      ['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday'].each do | day |
        rh.send(day).should eql('')
      end
    end


    it "adds an error if a day is duplicated"
  end



  describe "dup" do
    it "removes the id" do
      regular_hours.dup.id.should be_nil
    end

    it "removes the start_date" do
      regular_hours.dup.start_date.should be_nil
    end

    it "removes the end_date" do
      regular_hours.dup.end_date.should be_nil
    end

    it "is a new_record " do
      regular_hours.dup.new_record?.should be_true
    end

  end


  describe "#current_hours?" do

    it "returns true if the hours are currently available" do
      rh = regular_hours
      rh.start_date = 10.days.ago
      rh.end_date = 10.days.from_now

      rh.current_hours?.should be_true
    end


    it "returns false if the hours are not currently available" do
      rh = regular_hours
      rh.start_date = 10.days.from_now
      rh.end_date = 20.days.from_now

      rh.current_hours?.should be_false
    end
  end


  describe "#upcoming_hours_should_be_published?" do

    it "returns true if the hours start_date is with in 2 weeks" do
      rh = regular_hours
      rh.start_date = 13.days.from_now
      rh.end_date = 20.days.from_now

      rh.upcoming_hours_should_be_published?.should be_true
    end


    it "returns false if the hours are in the past" do
      rh = regular_hours
      rh.start_date = 15.days.ago
      rh.end_date = 2.days.ago

      rh.upcoming_hours_should_be_published?.should be_false
    end


    it "returns false if the hours are not currently available" do
      rh = regular_hours
      rh.start_date = 15.days.from_now
      rh.end_date = 20.days.from_now

      rh.upcoming_hours_should_be_published?.should be_false
    end
  end


  describe "#about_to_become_active?" do

  end
end
