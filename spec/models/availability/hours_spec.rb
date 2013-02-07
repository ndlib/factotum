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

    it "requires saved_day_ranges" do
      rh = FactoryGirl.create(:regular_hours)

      rh.valid?.should be_true
      rh.saved_day_ranges = nil
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

    it "requires saved_day_ranges" do
      rh = FactoryGirl.create(:hours_exception)

      rh.valid?.should be_true
      rh.saved_day_ranges = nil
      rh.valid?.should be_false
    end
  end

  describe "hours=" do

    it "parses a hash with all the days being the same " do
      hash = {:start_day => ['M'], :end_day => ['Su'], :hours => [ 'Open 24 Hours' ] }

      rh = regular_hours
      rh.hours = hash

      ['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday'].each do | day |
        rh.send(day).should eql('Open 24 Hours')
      end

    end

    it "parses a hash with the weekdays and weekends different" do
      hash = {
                :start_day => ['M', 'Sa'],
                :end_day => ['F', 'Su'],
                :hours => ['Open 24 Hours', '9am to 9pm'],
             }

      rh = regular_hours
      rh.hours = hash

      ['monday', 'tuesday', 'wednesday', 'thursday', 'friday'].each do | day |
        rh.send(day).should eql('Open 24 Hours')
      end

      ['saturday', 'sunday'].each do | day |
        rh.send(day).should eql('9am to 9pm')
      end

    end

    it "parses a hash with M-Thursday, Friday, Saturday and Sunday being different" do
      hash = {
          :start_day => ['M', 'F', 'Sa', 'Su'],
          :end_day => ['Th', 'F', 'Sa', 'Su'],
          :hours => ['Open 24 Hours', 'Open till 10pm', '9am to 9pm', '11am till Midnight']
      }

      rh = regular_hours
      rh.hours = hash

      ['monday', 'tuesday', 'wednesday', 'thursday'].each do | day |
        rh.send(day).should eql('Open 24 Hours')
      end

      rh.friday.should eql('Open till 10pm')
      rh.saturday.should eql('9am to 9pm')
      rh.sunday.should eql('11am till Midnight')
    end

    it "parses a hash with all different days" do
      hash = {
          :start_day => ['M', 'tu', 'w', 'th', 'F', 'Sa', 'Su'],
          :end_day => ['M', 'tu', 'w', 'Th', 'F', 'Sa', 'Su'],
          :hours => ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']
      }
      rh = regular_hours
      rh.hours = hash

      rh.monday.should eql('Monday')
      rh.tuesday.should eql('Tuesday')
      rh.wednesday.should eql('Wednesday')
      rh.thursday.should eql('Thursday')
      rh.friday.should eql('Friday')
      rh.saturday.should eql('Saturday')
      rh.sunday.should eql('Sunday')

    end

    it "skips blank entries" do
      hash = {
          :start_day => ['M', '', 'f', 'Sa', 'Su'],
          :end_day => ['Th', '', 'f', 'Sa', 'Su'],
          :hours => ['Open 24 Hours', "", 'Open till 10pm', '9am to 9pm', '11am till Midnight']
      }

      rh = regular_hours
      rh.hours = hash

      ['monday', 'tuesday', 'wednesday', 'thursday'].each do | day |
        rh.send(day).should eql('Open 24 Hours')
      end

      rh.friday.should eql('Open till 10pm')
      rh.saturday.should eql('9am to 9pm')
      rh.sunday.should eql('11am till Midnight')
    end


    it "skips blank start days" do
      hash = {
          :start_day => ['M', '', 'f', 'Sa', 'Su'],
          :end_day => ['Th', 'su', 'f', 'Sa', 'Su'],
          :hours => ['Open 24 Hours', "skipped", 'Open till 10pm', '9am to 9pm', '11am till Midnight']
      }

      rh = regular_hours
      rh.hours = hash

      ['monday', 'tuesday', 'wednesday', 'thursday'].each do | day |
        rh.send(day).should eql('Open 24 Hours')
      end

      rh.friday.should eql('Open till 10pm')
      rh.saturday.should eql('9am to 9pm')
      rh.sunday.should eql('11am till Midnight')
    end

    it "sets the end day to be the start day if there is no end day passed in " do
      hash = {
          :start_day => ['M', 'f', 'Sa', 'Su'],
          :end_day => ['Th', '', '', ''],
          :hours => ['Open 24 Hours', 'Open till 10pm', '9am to 9pm', '11am till Midnight']
      }

      rh = regular_hours
      rh.hours = hash

      ['monday', 'tuesday', 'wednesday', 'thursday'].each do | day |
        rh.send(day).should eql('Open 24 Hours')
      end

      rh.friday.should eql('Open till 10pm')
      rh.saturday.should eql('9am to 9pm')
      rh.sunday.should eql('11am till Midnight')
    end

    it "adds an error if a day is duplicated"

  end

  describe "regular_hours#hours="  do
    it "adds errors when monday is empty"
  end

  describe "hours_exceptions#hours=" do

  end

end
