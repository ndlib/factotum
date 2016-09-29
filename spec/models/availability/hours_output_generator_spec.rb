require 'rails_helper'

describe Availability::Hours::HoursOutputGenerator do


  before(:each) do
    @hours = FactoryGirl.create(:regular_hours)
    @hours.send(:reset_hours)
  end

  it "parses a hash with all the days being the same " do
    set_days_to(['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday'], 'Open 24 Hours')

    generated_result.should == [{:days=>"Monday - Sunday", :start_day=>"monday", :end_day=>"sunday", :hours=>"Open 24 Hours"}]
  end


  it "parses a hash with the weekdays and weekends different" do
    set_days_to(['monday', 'tuesday', 'wednesday', 'thursday', 'friday'], 'Open 24 Hours')
    set_days_to(['saturday', 'sunday'], '9am to 9pm')

    generated_result.should == [
                                  {:days=>"Monday - Friday",:start_day=>"monday",:end_day=>"friday",:hours=>"Open 24 Hours"},
                                  {:days=>"Saturday - Sunday",:start_day=>"saturday",:end_day=>"sunday",:hours=>"9am to 9pm"}
                               ]
  end


  it "parses a hash with M-Thursday, Friday, Saturday and Sunday being different" do
    set_days_to(['monday', 'tuesday', 'wednesday', 'thursday'], 'Open 24 Hours')
    set_days_to(['friday'], 'Open till 10pm')
    set_days_to(['saturday'], '9am to 9pm')
    set_days_to(['sunday'], '11am till Midnight')

    generated_result.should == [
                                {:days=>"Monday - Thursday",:start_day=>"monday",:end_day=>"thursday",:hours=>"Open 24 Hours"},
                                {:days=>"Friday",:start_day=>"friday",:end_day=>"friday",:hours=>"Open till 10pm"},
                                {:days=>"Saturday",:start_day=>"saturday",:end_day=>"saturday",:hours=>"9am to 9pm"},
                                {:days=>"Sunday",:start_day=>"sunday",:end_day=>"sunday",:hours=>"11am till Midnight"}
                              ]
  end


  it "parses a hash with all different days" do
    set_days_to(['monday'], 'monday')
    set_days_to(['tuesday'], 'tuesday')
    set_days_to(['wednesday'], 'wednesday')
    set_days_to(['thursday'], 'thursday')
    set_days_to(['friday'], 'friday')
    set_days_to(['saturday'], 'saturday')
    set_days_to(['sunday'], 'sunday')

    generated_result.should == [
                                {:days=>"Monday", :start_day=>"monday", :end_day=>"monday", :hours=>"monday"},
                                {:days=>"Tuesday",:start_day=>"tuesday",:end_day=>"tuesday",:hours=>"tuesday"},
                                {:days=>"Wednesday",:start_day=>"wednesday",:end_day=>"wednesday",:hours=>"wednesday"},
                                {:days=>"Thursday",:start_day=>"thursday",:end_day=>"thursday",:hours=>"thursday"},
                                {:days=>"Friday", :start_day=>"friday", :end_day=>"friday", :hours=>"friday"},
                                {:days=>"Saturday",:start_day=>"saturday",:end_day=>"saturday",:hours=>"saturday"},
                                {:days=>"Sunday", :start_day=>"sunday", :end_day=>"sunday", :hours=>"sunday"}
                              ]
  end




  it "sets day with missing dates in between" do
    set_days_to(['monday'], 'monday')
    set_days_to(['wednesday'], 'wednesday')

    generated_result.should == [
                                {:days=>"Monday", :start_day=>"monday", :end_day=>"monday", :hours=>"monday"},
                                {:days=>"Wednesday",:start_day=>"wednesday",:end_day=>"wednesday",:hours=>"wednesday"}
                              ]
  end


  def set_days_to(days, value)
    days.each do | day |
      @hours.send("#{day}=", value)
    end
  end


  def generated_result
    Availability::Hours::HoursOutputGenerator.new(@hours).generate
  end
end
