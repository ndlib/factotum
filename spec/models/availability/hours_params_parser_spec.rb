
require 'spec_helper'

describe Availability::Hours::HoursParamsParser do

  let(:hours_parser) { Availability::Hours::HoursParamsParser.new }

  it "parses a hash with all the days being the same " do
    hash = {:start_day => ['monday'], :end_day => ['sunday'], :hours => [ 'Open 24 Hours' ] }

    hours_parser.parse(hash)

    ['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday'].each do | day |
      hours_parser.send(day).should eql('Open 24 Hours')
    end
  end


  it "parses a hash with the weekdays and weekends different" do
    hash = {
              :start_day => ['monday', 'saturday'],
              :end_day => ['friday', 'sunday'],
              :hours => ['Open 24 Hours', '9am to 9pm'],
           }

    hours_parser.parse(hash)

    ['monday', 'tuesday', 'wednesday', 'thursday', 'friday'].each do | day |
      hours_parser.send(day).should eql('Open 24 Hours')
    end

    ['saturday', 'sunday'].each do | day |
      hours_parser.send(day).should eql('9am to 9pm')
    end
  end


  it "parses a hash with M-Thursday, Friday, Saturday and Sunday being different" do
    hash = {
        :start_day => ['monday', 'friday', 'saturday', 'sunday'],
        :end_day => ['thursday', 'friday', 'saturday', 'sunday'],
        :hours => ['Open 24 Hours', 'Open till 10pm', '9am to 9pm', '11am till Midnight']
    }

    hours_parser.parse(hash)

    ['monday', 'tuesday', 'wednesday', 'thursday'].each do | day |
      hours_parser.send(day).should eql('Open 24 Hours')
    end

    hours_parser.friday.should eql('Open till 10pm')
    hours_parser.saturday.should eql('9am to 9pm')
    hours_parser.sunday.should eql('11am till Midnight')
  end


  it "parses a hash with all different days" do
    hash = {
        :start_day => ['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday'],
        :end_day => ['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday'],
        :hours => ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']
    }

    hours_parser.parse(hash)

    hours_parser.monday.should eql('Monday')
    hours_parser.tuesday.should eql('Tuesday')
    hours_parser.wednesday.should eql('Wednesday')
    hours_parser.thursday.should eql('Thursday')
    hours_parser.friday.should eql('Friday')
    hours_parser.saturday.should eql('Saturday')
    hours_parser.sunday.should eql('Sunday')
  end


  it "parses a hash with uppercased letters" do
    hash = {
        :start_day => ['MONDAY', 'tuesday', 'WEDNESDAY', 'thursday', 'FRIDAY', 'saturday', 'SUNDAY'],
        :end_day => ['monday', 'TUESDAY', 'wednesday', 'THURSDAY', 'friday', 'SATURDAY', 'sunday'],
        :hours => ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']
    }

    hours_parser.parse(hash)

    hours_parser.monday.should eql('Monday')
    hours_parser.tuesday.should eql('Tuesday')
    hours_parser.wednesday.should eql('Wednesday')
    hours_parser.thursday.should eql('Thursday')
    hours_parser.friday.should eql('Friday')
    hours_parser.saturday.should eql('Saturday')
    hours_parser.sunday.should eql('Sunday')
  end


  it "skips blank entries" do
    hash = {
        :start_day => ['monday', '', 'friday', 'saturday', 'sunday'],
        :end_day => ['thursday', '', 'friday', 'saturday', 'sunday'],
        :hours => ['Open 24 Hours', "", 'Open till 10pm', '9am to 9pm', '11am till Midnight']
    }

    hours_parser.parse(hash)

    ['monday', 'tuesday', 'wednesday', 'thursday'].each do | day |
      hours_parser.send(day).should eql('Open 24 Hours')
    end

    hours_parser.friday.should eql('Open till 10pm')
    hours_parser.saturday.should eql('9am to 9pm')
    hours_parser.sunday.should eql('11am till Midnight')
  end


  it "skips blank start days" do
    hash = {
        :start_day => ['monday', '', 'friday', 'saturday', 'sunday'],
        :end_day => ['thursday', 'sunday', 'friday', 'saturday', 'sunday'],
        :hours => ['Open 24 Hours', "skipped", 'Open till 10pm', '9am to 9pm', '11am till Midnight']
    }

    hours_parser.parse(hash)

    ['monday', 'tuesday', 'wednesday', 'thursday'].each do | day |
      hours_parser.send(day).should eql('Open 24 Hours')
    end

    hours_parser.friday.should eql('Open till 10pm')
    hours_parser.saturday.should eql('9am to 9pm')
    hours_parser.sunday.should eql('11am till Midnight')
  end


  it "sets the end day to be the start day if there is no end day passed in " do
    hash = {
        :start_day => ['monday', 'friday', 'saturday', 'sunday'],
        :end_day => ['thursday', '', '', ''],
        :hours => ['Open 24 Hours', 'Open till 10pm', '9am to 9pm', '11am till Midnight']
    }

    hours_parser.parse(hash)

    ['monday', 'tuesday', 'wednesday', 'thursday'].each do | day |
      hours_parser.send(day).should eql('Open 24 Hours')
    end

    hours_parser.friday.should eql('Open till 10pm')
    hours_parser.saturday.should eql('9am to 9pm')
    hours_parser.sunday.should eql('11am till Midnight')
  end


  it "sets the day if only one of the days is set" do
    hash = {
      :start_day => ['monday'],
      :end_day => ['monday'],
      :hours => ['Open 24 Hours']
    }

    hours_parser.parse(hash)

    ['monday'].each do | day |
      hours_parser.send(day).should eql('Open 24 Hours')
    end

    ['tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday'].each do | day |
      hours_parser.send(day).should eql('')
    end
  end

  it "sets day with missing dates in between" do
    hash = {
      :start_day => ['monday', 'wednesday'],
      :end_day => ['monday', 'wednesday'],
      :hours => ['Open 24 Hours', 'Open 24 Hours']
    }

    hours_parser.parse(hash)

    ['monday', 'wednesday'].each do | day |
      hours_parser.send(day).should eql('Open 24 Hours')
    end

    ['tuesday', 'thursday', 'friday', 'saturday', 'sunday'].each do | day |
      hours_parser.send(day).should eql('')
    end
  end


  it "skips a date if it is missing a start date" do

    hash = {
      :start_day => ['monday', 'wednesday', ''],
      :end_day => ['monday', 'wednesday', 'thursday'],
      :hours => ['Open 24 Hours', 'Open 24 Hours', 'Open 24 Hours']
    }

    hours_parser.parse(hash)

    ['monday', 'wednesday'].each do | day |
      hours_parser.send(day).should eql('Open 24 Hours')
    end

    ['tuesday', 'thursday', 'friday', 'saturday', 'sunday'].each do | day |
      hours_parser.send(day).should eql('')
    end
  end


  it "skips a date if it is missing the hours text" do
    hash = {
      :start_day => ['monday', 'wednesday', 'thursday'],
      :end_day => ['monday', 'wednesday', 'thursday'],
      :hours => ['Open 24 Hours', 'Open 24 Hours', '']
    }

    hours_parser.parse(hash)

    ['monday', 'wednesday'].each do | day |
      hours_parser.send(day).should eql('Open 24 Hours')
    end

    ['tuesday', 'thursday', 'friday', 'saturday', 'sunday'].each do | day |
      hours_parser.send(day).should eql('')
    end
  end
end
