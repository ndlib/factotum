require "spec_helper"

describe Directory::SubjectsController do
  describe "routing" do

    it "routes to #index" do
      get("/utilities/directory/subjects").should route_to("directory/subjects#index")
    end

    it "routes to #show" do
      get("/utilities/directory/subjects/1").should route_to("directory/subjects#show", :id => "1")
    end

  end
end
