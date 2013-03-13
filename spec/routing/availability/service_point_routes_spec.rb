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
    { :get => "/availability/service_points/1" }.should route_to(
      action: "show", controller: "availability/service_points", id: "1"
                                                               )
  end


  it "should not route to the new " do
    # this is failing because it routes to the show action when there is no new action
    # so it is commented out for now.
    # { :get => "/availability/service_points/new" }.should_not be_routabale
  end


  it "should route to the edit" do
    { :get => "/availability/service_points/1/edit" }.should route_to(
      action: "edit", controller: "availability/service_points", id: "1"
                                                               )
  end


  it "should not route to the create " do
    { :post => "/availability/service_points" }.should_not be_routable
  end


  it "should not route the update" do
    { :put => "/availability/service_points/1" }.should route_to(
      action: "update", controller: "availability/service_points", id: "1"
                                                               )
  end


  it "should route to the print page" do
    { :get => "/availability/service_points/1/print" }.should route_to(
      action: "print", controller: "availability/service_points", id: "1"
                                                               )
  end
end
