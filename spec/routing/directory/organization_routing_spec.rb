require "spec_helper"

describe Directory::OrganizationController do
  describe "routing" do

    it "routes to #index" do
      get("/utilities/directory/organization").should route_to("directory/organization#index")
    end


  end
end