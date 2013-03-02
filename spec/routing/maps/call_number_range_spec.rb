require 'spec_helper'

describe 'Service Point Routes' do 

  it "should not route to the index" do
    { :get => "/maps/buildings/1/map_files/1/map_call_number_ranges" }.should_not be_routable
  end

  it "should not route to the show" do
    { :get => "/maps/buildings/1/map_files/1/map_call_number_ranges/1" }.should_not be_routable
  end


  it "should route to the new " do
     { :get => "/maps/buildings/1/map_files/1/map_call_number_ranges/new" }.should route_to(
      action: "new", controller: "maps/map_call_number_ranges", map_file_id: "1", building_id: "1"
    )
  end

  it "should route to the edit" do
    { :get => "/maps/buildings/1/map_files/1/map_call_number_ranges/1/edit" }.should route_to(
      action: "edit", controller: "maps/map_call_number_ranges", id: "1", map_file_id: "1", building_id: "1"
    )
  end

  it "should route to the create " do
    { :post => "/maps/buildings/1/map_files/1/map_call_number_ranges/" }.should route_to(
      action: "create", controller: "maps/map_call_number_ranges", map_file_id: "1", building_id: "1"
    )
  end

  it "should route the update" do
    { :put => "/maps/buildings/1/map_files/1/map_call_number_ranges/1" }.should route_to(
      action: "update", controller: "maps/map_call_number_ranges", id: "1", map_file_id: "1", building_id: "1"
    )
  end

  it "should route to the destroy" do
    { :delete => "/maps/buildings/1/map_files/1/map_call_number_ranges/1" }.should route_to(
      action: "destroy", controller: "maps/map_call_number_ranges", id: "1", map_file_id: "1", building_id: "1"
    )
  end

end