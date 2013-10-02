require 'spec_helper'

describe 'Service Point Routes' do

  it "should route to the index" do
    { :get => "/utilities/availability/service_points" }.should route_to(
      action: "index", controller: "availability/service_points"
                                                               )
  end


  it "should not route to the destroy" do
    { :delete => "/utilities/availability/service_points/" }.should_not be_routable
  end


  it "should not route to the show" do
    { :get => "/utilities/availability/service_points/1" }.should_not be_routable
  end


  it "should route to the new " do
    { :get => "/utilities/availability/service_points/new" }.should be_routable
  end


  it "should route to the edit" do
    { :get => "/utilities/availability/service_points/1/edit" }.should route_to(
      action: "edit", controller: "availability/service_points", id: "1"
    )
  end


  it "should not route to the create " do
    { :post => "/utilities/availability/service_points" }.should be_routable
  end


  it "should not route the update" do
    { :put => "/utilities/availability/service_points/1" }.should route_to(
      action: "update", controller: "availability/service_points", id: "1"
    )
  end

end
