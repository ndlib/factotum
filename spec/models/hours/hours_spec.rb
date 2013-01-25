require 'spec_helper'

describe Hours::Hours do

=begin


  describe "hours=" do

    it "parses a hash with all the days being the same " do
      hash = {:sday => 'M', :eday => 'Su', :hours_text => 'Open 24 Hours' }

      hours.hours = hash

      ['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday'].each do | day |
        hours.send(day).should eql('Open 24 Hours')
      end
    end

    it "parses a hash with the weekdays and weekends different" do
      hash = {
                :sday => 'M', :eday => 'F', :hours_text => 'Open 24 Hours',
                :sday => 'Sa', :eday => 'Su', :hours_text => '9am to 9pm'
             }

      hours.hours = hash

      ['monday', 'tuesday', 'wednesday', 'thursday', 'friday'].each do | day |
        hours.send(day).should eql('Open 24 Hours')
      end

      ['saturday', 'sunday'].each do | day |
        hours.send(day).should eql('9am to 9pm')
      end

    end

    it "parses a hash with M-Thursday, Friday, Saturday and Sunday being different" do
      hash = {
          :sday => 'M', :eday => 'Th', :hours_text => 'Open 24 Hours',
          :sday => 'F', :eday => '', :hours_text => 'Open till 10pm',
          :sday => 'Sa', :eday => '', :hours_text => '9am to 9pm',
          :sday => 'Su', :eday => '', :hours_text => '11am till Midnight'
      }

      hours.hours = hash

      ['monday', 'tuesday', 'wednesday', 'thursday'].each do | day |
        hours.send(day).should eql('Open 24 Hours')
      end

      hours.friday.should eql('Open till 10pm')
      hours.saturday.should eql('9am to 9pm')
      hours.sunday.should eql('11am till Midnight')
    end

    it "parses a hash with all different days" do
      hash = {
          :sday => 'M', :eday => '', :hours_text => 'Monday',
          :sday => 'Tu', :eday => '', :hours_text => 'Tuesday',
          :sday => 'W', :eday => '', :hours_text => 'Wednesday',
          :sday => 'Th', :eday => '', :hours_text => 'Thursday',
          :sday => 'F', :eday => '', :hours_text => 'Friday',
          :sday => 'Sa', :eday => '', :hours_text => 'Saturday',
          :sday => 'Su', :eday => '', :hours_text => 'Sunday'
      }

      hours.monday.should eql('Monday')
      hours.tuesday.should eql('Tuesday')
      hours.wednesday.should eql('Wednesday')
      hours.thursday.should eql('Thursday')
      hours.friday.should eql('Friday')
      hours.saturday.should eql('Saturday')
      hours.sunday.should eql('Sunday')
    end

    it "adds an error if a day is missing"

    it "adds an error if a day is duplicated"

  end

=end
end
