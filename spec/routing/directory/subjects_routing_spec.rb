require "spec_helper"

describe Directory::SubjectsController do
  describe "routing" do

    it "routes to #index" do
      expect(get("/directory/subjects")).to route_to("directory/subjects#index")
    end

    it "routes to #show" do
      expect(get("/directory/subjects/1")).to route_to("directory/subjects#show", :id => "1")
    end

  end
end
