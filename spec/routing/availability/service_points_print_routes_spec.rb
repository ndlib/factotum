require 'spec_helper'

describe 'Service Point Print Routes' do

  it "should not route to the show" do
    { :get => "/utilities/availability/service_points_print/1" }.should route_to(
      action: "show", controller: "availability/service_points_print", id: "1"
      )
  end



  it "should route to the print page" do
    { :get => "/utilities/availability/service_points_print/1/print" }.should route_to(
      action: "print", controller: "availability/service_points_print", id: "1"
      )
  end
end
