require "spec_helper"

describe Directory::AdministrativeUsersController do
  describe "routing" do

    it "routes to #index" do
      get("/directory/administrative_users").should route_to("directory/administrative_users#index")
    end

    it "routes to #new" do
      get("/directory/administrative_users/new").should route_to("directory/administrative_users#new")
    end

    it "routes to #show" do
      get("/directory/administrative_users/1").should route_to("directory/administrative_users#show", :id => "1")
    end

    it "routes to #edit" do
      get("/directory/administrative_users/1/edit").should route_to("directory/administrative_users#edit", :id => "1")
    end

    it "routes to #create" do
      post("/directory/administrative_users").should route_to("directory/administrative_users#create")
    end

    it "routes to #update" do
      put("/directory/administrative_users/1").should route_to("directory/administrative_users#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/directory/administrative_users/1").should route_to("directory/administrative_users#destroy", :id => "1")
    end

  end
end
