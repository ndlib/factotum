require "spec_helper"

describe Directory::OrganizationController do
  describe "routing" do

    it "routes to #index" do
      expect(get("/directory/organization")).to route_to("directory/organization#index")
    end


  end
end
