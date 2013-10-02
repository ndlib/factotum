require 'spec_helper'

describe 'Buildings Routes' do

  it "should route to the index" do
    { :get => "/utilities/maps/buildings" }.should route_to( {:action=>"index", :controller=>"maps/buildings"} )
  end

  it "should not route to the show" do
    { :get => "/utilities/maps/buildings/1" }.should_not be_routable
  end


  it "should not route to the new " do
     { :get => "/utilities/maps/buildings/new" }.should be_routable
  end

  it "should not route to the edit" do
    { :get => "/utilities/maps/buildings/1/edit" }.should_not be_routable
  end

  it "should not route to the create " do
    { :post => "/utilities/maps/buildings" }.should be_routable
  end

  it "should not route the update" do
    { :put => "/utilities/maps/buildings/1" }.should_not be_routable
  end

  it "should not route to the destroy" do
    { :delete => "/utilities/maps/buildings/1" }.should_not be_routable
  end

end
