require 'rails_helper'

describe 'Service Point Routes' do

  it "should not route to the index" do
    { :get => "/utilities/maps/buildings/1/floor_maps/1/call_number_ranges" }.should_not be_routable
  end

  it "should not route to the show" do
    { :get => "/utilities/maps/buildings/1/floor_maps/1/call_number_ranges/1" }.should_not be_routable
  end


  it "should route to the new " do
     { :get => "/utilities/maps/buildings/1/floor_maps/1/call_number_ranges/new" }.should route_to(
      action: "new", controller: "maps/call_number_ranges", floor_map_id: "1", building_id: "1"
    )
  end

  it "should route to the edit" do
    { :get => "/utilities/maps/buildings/1/floor_maps/1/call_number_ranges/1/edit" }.should route_to(
      action: "edit", controller: "maps/call_number_ranges", id: "1", floor_map_id: "1", building_id: "1"
    )
  end

  it "should route to the create " do
    { :post => "/utilities/maps/buildings/1/floor_maps/1/call_number_ranges/" }.should route_to(
      action: "create", controller: "maps/call_number_ranges", floor_map_id: "1", building_id: "1"
    )
  end

  it "should route the update" do
    { :put => "/utilities/maps/buildings/1/floor_maps/1/call_number_ranges/1" }.should route_to(
      action: "update", controller: "maps/call_number_ranges", id: "1", floor_map_id: "1", building_id: "1"
    )
  end

  it "should route to the destroy" do
    { :delete => "/utilities/maps/buildings/1/floor_maps/1/call_number_ranges/1" }.should route_to(
      action: "destroy", controller: "maps/call_number_ranges", id: "1", floor_map_id: "1", building_id: "1"
    )
  end

end
