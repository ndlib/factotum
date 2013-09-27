require "spec_helper"

describe Directory::SelectorSubjectsController do
  describe "routing" do

    it "routes to #index" do
      get("/directory/selector_subjects").should route_to("directory/selector_subjects#index")
    end

    it "routes to #new" do
      get("/directory/selector_subjects/new").should route_to("directory/selector_subjects#new")
    end

    it "routes to #show" do
      get("/directory/selector_subjects/1").should route_to("directory/selector_subjects#show", :id => "1")
    end

    it "routes to #edit" do
      get("/directory/selector_subjects/1/edit").should route_to("directory/selector_subjects#edit", :id => "1")
    end

    it "routes to #create" do
      post("/directory/selector_subjects").should route_to("directory/selector_subjects#create")
    end

    it "routes to #update" do
      put("/directory/selector_subjects/1").should route_to("directory/selector_subjects#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/directory/selector_subjects/1").should route_to("directory/selector_subjects#destroy", :id => "1")
    end

  end
end
