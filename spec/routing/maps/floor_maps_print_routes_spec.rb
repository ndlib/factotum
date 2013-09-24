require 'spec_helper'

describe 'Floor Map Print Routes' do

  it "should not route to the index" do
    { :get => "/utilities/maps/buildings/1/floor_maps_print" }.should_not be_routable
  end

  it "should not route to the destroy" do
    { :delete => "/utilities/maps/buildings/1/floor_maps_print/1" }.should_not be_routable
  end

  it "should route to the show" do
    { :get => "/utilities/maps/buildings/1/floor_maps_print/1" }.should route_to(
      action: "show", controller: "maps/floor_maps_print", id: "1", building_id: "1"
    )
  end

  it "routes to the print action" do
    { :get => "/utilities/maps/buildings/1/floor_maps_print/1/print" }.should route_to(
      action: "print", controller: "maps/floor_maps_print", id: "1", building_id: "1"
    )
  end

  it "should route to the new " do
     # routes because show/new routes to show id => new
     # { :get => "/utilities/maps/buildings/1/floor_maps_print/new" }.should_not be_routable
  end

  it "should route to the edit" do
    { :get => "/utilities/maps/buildings/1/floor_maps_print/1/edit" }.should_not be_routable
  end

  it "should route to the create " do
    { :post => "/utilities/maps/buildings/1/floor_maps_print" }.should_not be_routable
  end

  it "should route the update" do
    { :put => "/utilities/maps/buildings/1/floor_maps_print/1" }.should_not be_routable
  end


end
