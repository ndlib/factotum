require "spec_helper"

describe Directory::UnitTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/directory/unit_types").should route_to("directory/unit_types#index")
    end

    it "routes to #new" do
      get("/directory/unit_types/new").should route_to("directory/unit_types#new")
    end

    it "routes to #show" do
      get("/directory/unit_types/1").should route_to("directory/unit_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/directory/unit_types/1/edit").should route_to("directory/unit_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/directory/unit_types").should route_to("directory/unit_types#create")
    end

    it "routes to #update" do
      put("/directory/unit_types/1").should route_to("directory/unit_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/directory/unit_types/1").should route_to("directory/unit_types#destroy", :id => "1")
    end

  end
end
