require 'rails_helper'

describe 'Search Routes' do
  it "routes to #results_library" do
    { get: "/utilities/find/resources" }.
      should route_to(
        controller: "search",
        action: "results_library"
      )
  end

  it "has a named route" do
    { get: find_resources_path }.
      should route_to(
        controller: "search",
        action: "results_library"
      )
  end
end
