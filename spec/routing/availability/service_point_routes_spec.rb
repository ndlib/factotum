require 'rails_helper'

describe 'Service Point Routes' do

  it "should route to the index" do
    expect({ :get => "/utilities/availability/service_points" }).to route_to(
      action: "index", controller: "availability/service_points"
                                                               )
  end


  it "should not route to the destroy" do
    expect({ :delete => "/utilities/availability/service_points/" }).not_to be_routable
  end


  it "should not route to the show" do
    expect({ :get => "/utilities/availability/service_points/1" }).not_to be_routable
  end


  it "should route to the new " do
    expect({ :get => "/utilities/availability/service_points/new" }).to be_routable
  end


  it "should route to the edit" do
    expect({ :get => "/utilities/availability/service_points/1/edit" }).to route_to(
      action: "edit", controller: "availability/service_points", id: "1"
    )
  end


  it "should not route to the create " do
    expect({ :post => "/utilities/availability/service_points" }).to be_routable
  end


  it "should not route the update" do
    expect({ :put => "/utilities/availability/service_points/1" }).to route_to(
      action: "update", controller: "availability/service_points", id: "1"
    )
  end

end
