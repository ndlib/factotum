require 'spec_helper'

describe 'Search Routes' do
  it "routes to #index" do
    { get: "find/resources" }.
      should route_to(
        controller: "search",
        action: "index"
      )
  end

  it "has a named route" do
    { get: find_resources_path }.
      should route_to(
        controller: "search",
        action: "index"
      )
  end
end
