require 'spec_helper'

describe 'Map Files Routes' do

  it "should route to the index" do
    { :get => "/maps/buildings/1/map_files" }.should route_to(
      action: "index", controller: "maps/map_files", building_id: "1"
    )
  end

  it "should route to the destroy" do
    { :delete => "/maps/buildings/1/map_files/1" }.should route_to(
      action: "destroy", controller: "maps/map_files", id: "1", building_id: "1"
    )
  end

  it "should route to the show" do
    { :get => "/maps/buildings/1/map_files/1" }.should route_to(
      action: "show", controller: "maps/map_files", id: "1", building_id: "1"
    )
  end 

  it "should route to the new " do
     { :get => "/maps/buildings/1/map_files/new" }.should route_to(
      action: "new", controller: "maps/map_files", building_id: "1"
    )
  end

  it "should route to the edit" do
    { :get => "/maps/buildings/1/map_files/1/edit" }.should route_to(
      action: "edit", controller: "maps/map_files", id: "1", building_id: "1"
    )
  end

  it "should route to the create " do
    { :post => "/maps/buildings/1/map_files" }.should route_to(
      action: "create", controller: "maps/map_files", building_id: "1"
    )
  end

  it "should route the update" do
    { :put => "/maps/buildings/1/map_files/1" }.should route_to(
      action: "update", controller: "maps/map_files", id: "1", building_id: "1"
    )
  end
end