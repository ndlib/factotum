require 'rails_helper'

describe 'Buildings Routes' do

  it "should route to the index" do
    expect({ :get => "/utilities/maps/buildings" }).to route_to( {:action=>"index", :controller=>"maps/buildings"} )
  end

  it "should not route to the show" do
    expect({ :get => "/utilities/maps/buildings/1" }).not_to be_routable
  end


  it "should not route to the new " do
     expect({ :get => "/utilities/maps/buildings/new" }).to be_routable
  end

  it "should not route to the edit" do
    expect({ :get => "/utilities/maps/buildings/1/edit" }).not_to be_routable
  end

  it "should not route to the create " do
    expect({ :post => "/utilities/maps/buildings" }).to be_routable
  end

  it "should not route the update" do
    expect({ :put => "/utilities/maps/buildings/1" }).not_to be_routable
  end

  it "should not route to the destroy" do
    expect({ :delete => "/utilities/maps/buildings/1" }).not_to be_routable
  end

end
