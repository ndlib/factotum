require "spec_helper"

describe Directory::OrganizationalUnitsController do
  describe "routing" do

    it "routes to #index" do
      get("/directory/organizational_units").should route_to("directory/organizational_units#index")
    end

    it "routes to #new" do
      get("/directory/organizational_units/new").should route_to("directory/organizational_units#new")
    end

    it "routes to #show" do
      get("/directory/organizational_units/1").should route_to("directory/organizational_units#show", :id => "1")
    end

    it "routes to #edit" do
      get("/directory/organizational_units/1/edit").should route_to("directory/organizational_units#edit", :id => "1")
    end

    it "routes to #create" do
      post("/directory/organizational_units").should route_to("directory/organizational_units#create")
    end

    it "routes to #update" do
      put("/directory/organizational_units/1").should route_to("directory/organizational_units#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/directory/organizational_units/1").should route_to("directory/organizational_units#destroy", :id => "1")
    end

  end
end