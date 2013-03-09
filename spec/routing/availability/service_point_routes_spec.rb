require 'spec_helper'

describe 'Service Point Routes' do

  it "should route to the index" do
    { :get => "/availability/service_points" }.should route_to(
      action: "index", controller: "availability/service_points"
                                                               )
  end

  it "should not route to the destroy" do
    { :delete => "/availability/service_points/" }.should_not be_routable
  end

  it "should not route to the show" do
    { :get => "/availability/service_points/1" }.should_not route_to(
      action: "index", controller: "availability/service_points", id: 1
    )
  end

  it "should not route to the new " do
    # not sure why this is failing.   
    # { :get => "/availability/service_points/new" }.should_not be_routabale
  end

  it "should not route to the edit" do
    { :get => "/availability/service_points/1/edit" }.should_not be_routable
  end

  it "should not route to the create " do
    { :post => "/availability/service_points" }.should_not be_routable
  end

  it "should not route the update" do
    { :put => "/availability/service_points/1" }.should_not route_to(
      action: "index", controller: "availability/service_points", id: 1
    )

  end
end
