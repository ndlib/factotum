require "spec_helper"

describe Directory::SubjectsController do
  describe "routing" do

    it "routes to #index" do
      get("/utilities/directory/subjects").should route_to("directory/subjects#index")
    end

    it "routes to #new" do
      get("/utilities/directory/subjects/new").should route_to("directory/subjects#new")
    end

    it "routes to #show" do
      get("/utilities/directory/subjects/1").should route_to("directory/subjects#show", :id => "1")
    end

    it "routes to #edit" do
      get("/utilities/directory/subjects/1/edit").should route_to("directory/subjects#edit", :id => "1")
    end

    it "routes to #create" do
      post("/utilities/directory/subjects").should route_to("directory/subjects#create")
    end

    it "routes to #update" do
      put("/utilities/directory/subjects/1").should route_to("directory/subjects#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/utilities/directory/subjects/1").should route_to("directory/subjects#destroy", :id => "1")
    end

  end
end
