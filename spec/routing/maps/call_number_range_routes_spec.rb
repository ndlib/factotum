require 'rails_helper'

describe 'Service Point Routes' do

  it "should not route to the index" do
    expect({ :get => "/utilities/maps/buildings/1/floor_maps/1/call_number_ranges" }).not_to be_routable
  end

  it "should not route to the show" do
    expect({ :get => "/utilities/maps/buildings/1/floor_maps/1/call_number_ranges/1" }).not_to be_routable
  end


  it "should route to the new " do
     expect({ :get => "/utilities/maps/buildings/1/floor_maps/1/call_number_ranges/new" }).to route_to(
      action: "new", controller: "maps/call_number_ranges", floor_map_id: "1", building_id: "1"
    )
  end

  it "should route to the edit" do
    expect({ :get => "/utilities/maps/buildings/1/floor_maps/1/call_number_ranges/1/edit" }).to route_to(
      action: "edit", controller: "maps/call_number_ranges", id: "1", floor_map_id: "1", building_id: "1"
    )
  end

  it "should route to the create " do
    expect({ :post => "/utilities/maps/buildings/1/floor_maps/1/call_number_ranges/" }).to route_to(
      action: "create", controller: "maps/call_number_ranges", floor_map_id: "1", building_id: "1"
    )
  end

  it "should route the update" do
    expect({ :put => "/utilities/maps/buildings/1/floor_maps/1/call_number_ranges/1" }).to route_to(
      action: "update", controller: "maps/call_number_ranges", id: "1", floor_map_id: "1", building_id: "1"
    )
  end

  it "should route to the destroy" do
    expect({ :delete => "/utilities/maps/buildings/1/floor_maps/1/call_number_ranges/1" }).to route_to(
      action: "destroy", controller: "maps/call_number_ranges", id: "1", floor_map_id: "1", building_id: "1"
    )
  end

end
