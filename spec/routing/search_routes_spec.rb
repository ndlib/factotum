require 'rails_helper'

describe 'Search Routes' do
  it "routes to #results_library" do
    expect({ get: "/utilities/find/resources" }).
      to route_to(
        controller: "search",
        action: "results_library"
      )
  end

  it "has a named route" do
    expect({ get: find_resources_path }).
      to route_to(
        controller: "search",
        action: "results_library"
      )
  end
end
