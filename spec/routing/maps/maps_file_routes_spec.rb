require 'spec_helper'

describe 'Service Point Routes' do

  it "should route to the index" do
    { :get => "/maps/maps_files" }.should route_to(
      action: "index", controller: "maps/maps_files"
    )
  end

  it "should route to the destroy" do
    { :delete => "/maps/maps_files" }.should route_to(
      action: "destroy", controller: "maps/maps_files"
    )
  end

  it "should route to the show" do
    { :get => "/maps/maps_files/1" }.should route_to(
      action: "show", controller: "maps/maps_files", id: 1
    )
  end

  it "should route to the new " do
     { :get => "/maps/maps_files/new" }.should route_to(
      action: "new", controller: "maps/maps_files"
    )
  end

  it "should route to the edit" do
    { :get => "/maps/maps_files/1/edit" }.should route_to(
      action: "edit", controller: "maps/maps_files", id: 1
    )
  end

  it "should route to the create " do
    { :post => "/maps/maps_files" }.should route_to(
      action: "create", controller: "maps/maps_files"
    )
  end

  it "should route the update" do
    { :put => "/maps/maps_files/1" }.should route_to(
      action: "update", controller: "maps/maps_files", id: 1
    )

  end
end