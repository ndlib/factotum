require 'rails_helper'

describe Availability::Hours do
  let(:regular_hours) { FactoryGirl.create(:regular_hours) }
  let(:hours_exception) { FactoryGirl.create(:hours_exception) }

  describe "regular_hours" do

    it "requires start_date" do
      rh = FactoryGirl.create(:regular_hours)

      expect(rh.valid?).to be_truthy
      rh.start_date = nil
      expect(rh.valid?).to be_falsey
    end

    it "requires end_date" do
      rh = FactoryGirl.create(:regular_hours)

      expect(rh.valid?).to be_truthy
      rh.end_date = nil
      expect(rh.valid?).to be_falsey
    end

    it "requires monday" do
      rh = FactoryGirl.create(:regular_hours)

      expect(rh.valid?).to be_truthy
      rh.monday = nil
      expect(rh.valid?).to be_falsey
    end

    it "requires tuesday" do
      rh = FactoryGirl.create(:regular_hours)

      expect(rh.valid?).to be_truthy
      rh.tuesday = nil
      expect(rh.valid?).to be_falsey
    end

    it "requires wednesday" do
      rh = FactoryGirl.create(:regular_hours)

      expect(rh.valid?).to be_truthy
      rh.wednesday = nil
      expect(rh.valid?).to be_falsey
    end

    it "requires thursday" do
      rh = FactoryGirl.create(:regular_hours)

      expect(rh.valid?).to be_truthy
      rh.thursday = nil
      expect(rh.valid?).to be_falsey
    end

    it "requires friday" do
      rh = FactoryGirl.create(:regular_hours)

      expect(rh.valid?).to be_truthy
      rh.friday = nil
      expect(rh.valid?).to be_falsey
    end

    it "requires saturday" do
      rh = FactoryGirl.create(:regular_hours)

      expect(rh.valid?).to be_truthy
      rh.saturday = nil
      expect(rh.valid?).to be_falsey
    end

    it "requires sunday" do
      rh = FactoryGirl.create(:regular_hours)

      expect(rh.valid?).to be_truthy
      rh.sunday = nil
      expect(rh.valid?).to be_falsey
    end

  end

  describe "exception hours" do
    it "is required" do
      rh = FactoryGirl.create(:hours_exception)
      expect(rh.valid?).to be_truthy
      rh.start_date = nil
      expect(rh.valid?).to be_falsey
    end

    it "is required" do
      rh = FactoryGirl.create(:hours_exception)

      expect(rh.valid?).to be_truthy
      rh.end_date = nil
      expect(rh.valid?).to be_falsey
    end

    it "does not require monday" do
      rh = FactoryGirl.create(:hours_exception)

      expect(rh.valid?).to be_truthy
      rh.monday = nil
      expect(rh.valid?).to be_truthy
    end

    it "does not require tuesday" do
      rh = FactoryGirl.create(:hours_exception)

      expect(rh.valid?).to be_truthy
      rh.tuesday = nil
      expect(rh.valid?).to be_truthy
    end

    it "does not require wednesday" do
      rh = FactoryGirl.create(:hours_exception)

      expect(rh.valid?).to be_truthy
      rh.wednesday = nil
      expect(rh.valid?).to be_truthy
    end

    it "does not require thursday" do
      rh = FactoryGirl.create(:hours_exception)

      expect(rh.valid?).to be_truthy
      rh.thursday = nil
      expect(rh.valid?).to be_truthy
    end

    it "does not require friday" do
      rh = FactoryGirl.create(:hours_exception)

      expect(rh.valid?).to be_truthy
      rh.friday = nil
      expect(rh.valid?).to be_truthy
    end

    it "does not require saturday" do
      rh = FactoryGirl.create(:hours_exception)

      expect(rh.valid?).to be_truthy
      rh.saturday = nil
      expect(rh.valid?).to be_truthy
    end

    it "does not require sunday" do
      rh = FactoryGirl.create(:hours_exception)

      expect(rh.valid?).to be_truthy
      rh.sunday = nil
      expect(rh.valid?).to be_truthy
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
        expect(rh.send(day)).to eql('')
      end
    end


    it "adds an error if a day is duplicated"
  end



  describe "dup" do
    it "removes the id" do
      expect(regular_hours.dup.id).to be_nil
    end

    it "removes the start_date" do
      expect(regular_hours.dup.start_date).to be_nil
    end

    it "removes the end_date" do
      expect(regular_hours.dup.end_date).to be_nil
    end

    it "is a new_record " do
      expect(regular_hours.dup.new_record?).to be_truthy
    end

  end


  describe "#current_hours?" do

    it "returns true if the hours are currently available" do
      rh = regular_hours
      rh.start_date = 10.days.ago
      rh.end_date = 10.days.from_now

      expect(rh.current_hours?).to be_truthy
    end


    it "returns false if the hours are not currently available" do
      rh = regular_hours
      rh.start_date = 10.days.from_now
      rh.end_date = 20.days.from_now

      expect(rh.current_hours?).to be_falsey
    end
  end


  describe "#upcoming_hours_should_be_published?" do

    it "returns true if the hours start_date is with in 2 weeks" do
      rh = regular_hours
      rh.start_date = 13.days.from_now
      rh.end_date = 20.days.from_now

      expect(rh.upcoming_hours_should_be_published?).to be_truthy
    end


    it "returns false if the hours are in the past" do
      rh = regular_hours
      rh.start_date = 15.days.ago
      rh.end_date = 2.days.ago

      expect(rh.upcoming_hours_should_be_published?).to be_falsey
    end


    it "returns false if the hours are not currently available" do
      rh = regular_hours
      rh.start_date = 15.days.from_now
      rh.end_date = 20.days.from_now

      expect(rh.upcoming_hours_should_be_published?).to be_falsey
    end
  end


  describe "#about_to_become_active?" do

  end
end
