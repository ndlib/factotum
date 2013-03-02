require 'spec_helper'

describe 'Buildings Routes' do 

  it "should route to the index" do
    { :get => "/maps/buildings" }.should route_to( {:action=>"index", :controller=>"maps/buildings"} )
  end

  it "should not route to the show" do
    { :get => "/maps/buildings/1" }.should_not be_routable
  end


  it "should not route to the new " do
     { :get => "/maps/buildings/new" }.should_not be_routable
  end

  it "should not route to the edit" do
    { :get => "/maps/buildings/1/edit" }.should_not be_routable
  end

  it "should not route to the create " do
    { :post => "/maps/buildings" }.should_not be_routable
  end

  it "should not route the update" do
    { :put => "/maps/buildings/1" }.should_not be_routable
  end

  it "should not route to the destroy" do
    { :delete => "/maps/buildings/1" }.should_not be_routable
  end

end