require 'spec_helper'

describe "Services" do

  describe "get all service_points " do

    describe "searching" do
      before(:each) do
        FactoryGirl.create(:service_point, :code => 'code1')
        FactoryGirl.create(:service_point, :code => 'code2')
        FactoryGirl.create(:service_point, :code => 'code3')
      end


      it "returns a array of service_points and codes you can use " do
        get availability_api_path()
        json = ActiveSupport::JSON.decode(response.body)

        json.class.should be(Hash)
        json["service_points"].size.should == 3
      end

      it "you can search for lists of service_points" do
        get availability_api_path(:codes => ['code1', 'code2'])
        json = ActiveSupport::JSON.decode(response.body)
        json["service_points"].size.should == 2
      end
    end


    describe "dates" do
      before(:each) do
        FactoryGirl.create(:service_point, :code => 'code', :regular_hours => [
                                                        FactoryGirl.create(:regular_hours, :name => 'School Year Hours', :start_date => 10.days.ago, :end_date => 10.days.from_now),
                                                        FactoryGirl.create(:regular_hours, :name => 'Summer Hours', :start_date => 11.days.from_now, :end_date => 20.days.from_now)
                                                        ])
      end

      it "defaults the date parameter to the current time if none is provided" do
        get availability_api_path()
        json = ActiveSupport::JSON.decode(response.body)

        json["service_points"]['code']["regular_hours"]["name"].should == "School Year Hours"
        true
      end

      it "uses a passed in date rather then the current time " do
        get availability_api_path(:date => 12.days.from_now)
        json = ActiveSupport::JSON.decode(response.body)
        json["service_points"]['code']["regular_hours"]["name"].should == "Summer Hours"
      end

    end
  end

end