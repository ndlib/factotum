require "spec_helper"

describe Directory::ContactInformationsController do
  describe "routing" do

    it "routes to #index" do
      get("/directory/contact_informations").should route_to("directory/contact_informations#index")
    end

    it "routes to #new" do
      get("/directory/contact_informations/new").should route_to("directory/contact_informations#new")
    end

    it "routes to #show" do
      get("/directory/contact_informations/1").should route_to("directory/contact_informations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/directory/contact_informations/1/edit").should route_to("directory/contact_informations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/directory/contact_informations").should route_to("directory/contact_informations#create")
    end

    it "routes to #update" do
      put("/directory/contact_informations/1").should route_to("directory/contact_informations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/directory/contact_informations/1").should route_to("directory/contact_informations#destroy", :id => "1")
    end

  end
end
