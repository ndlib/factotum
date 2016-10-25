require 'rails_helper'

describe 'Floor Map Print Routes' do

  it "should not route to the index" do
    expect({ :get => "/utilities/maps/buildings/1/floor_maps_print" }).not_to be_routable
  end

  it "should not route to the destroy" do
    expect({ :delete => "/utilities/maps/buildings/1/floor_maps_print/1" }).not_to be_routable
  end

  it "should route to the show" do
    expect({ :get => "/utilities/maps/buildings/1/floor_maps_print/1" }).to route_to(
      action: "show", controller: "maps/floor_maps_print", id: "1", building_id: "1"
    )
  end

  it "routes to the print action" do
    expect({ :get => "/utilities/maps/buildings/1/floor_maps_print/1/print" }).to route_to(
      action: "print", controller: "maps/floor_maps_print", id: "1", building_id: "1"
    )
  end

  it "should route to the new " do
     # routes because show/new routes to show id => new
     # { :get => "/utilities/maps/buildings/1/floor_maps_print/new" }.should_not be_routable
  end

  it "should route to the edit" do
    expect({ :get => "/utilities/maps/buildings/1/floor_maps_print/1/edit" }).not_to be_routable
  end

  it "should route to the create " do
    expect({ :post => "/utilities/maps/buildings/1/floor_maps_print" }).not_to be_routable
  end

  it "should route the update" do
    expect({ :put => "/utilities/maps/buildings/1/floor_maps_print/1" }).not_to be_routable
  end


end
