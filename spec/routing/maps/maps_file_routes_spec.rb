require 'rails_helper'

describe 'Map Files Routes' do

  it "should route to the index" do
    { :get => "/utilities/maps/buildings/1/floor_maps" }.should route_to(
      action: "index", controller: "maps/floor_maps", building_id: "1"
    )
  end

  it "should route to the destroy" do
    { :delete => "/utilities/maps/buildings/1/floor_maps/1" }.should route_to(
      action: "destroy", controller: "maps/floor_maps", id: "1", building_id: "1"
    )
  end

  it "should route to the show" do
    { :get => "/utilities/maps/buildings/1/floor_maps/1" }.should route_to(
      action: "show", controller: "maps/floor_maps", id: "1", building_id: "1"
    )
  end

  it "should route to the new " do
     { :get => "/utilities/maps/buildings/1/floor_maps/new" }.should route_to(
      action: "new", controller: "maps/floor_maps", building_id: "1"
    )
  end

  it "should route to the edit" do
    { :get => "/utilities/maps/buildings/1/floor_maps/1/edit" }.should route_to(
      action: "edit", controller: "maps/floor_maps", id: "1", building_id: "1"
    )
  end

  it "should route to the create " do
    { :post => "/utilities/maps/buildings/1/floor_maps" }.should route_to(
      action: "create", controller: "maps/floor_maps", building_id: "1"
    )
  end

  it "should route the update" do
    { :put => "/utilities/maps/buildings/1/floor_maps/1" }.should route_to(
      action: "update", controller: "maps/floor_maps", id: "1", building_id: "1"
    )
  end


end
