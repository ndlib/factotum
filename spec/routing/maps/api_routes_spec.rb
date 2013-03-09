require 'spec_helper'

describe 'Service Point Routes' do

  it "should route to the api" do
    { :get => "/maps/api" }.should route_to(
      action: "index", controller: "maps/api"
    )
  end

end