require "spec_helper"

describe Directory::EmployeeRanksController do
  describe "routing" do

    it "routes to #index" do
      get("/utilities/directory/employee_ranks").should route_to("directory/employee_ranks#index")
    end

    it "routes to #new" do
      get("/utilities/directory/employee_ranks/new").should route_to("directory/employee_ranks#new")
    end

    it "routes to #show" do
      get("/utilities/directory/employee_ranks/1").should route_to("directory/employee_ranks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/utilities/directory/employee_ranks/1/edit").should route_to("directory/employee_ranks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/utilities/directory/employee_ranks").should route_to("directory/employee_ranks#create")
    end

    it "routes to #update" do
      put("/utilities/directory/employee_ranks/1").should route_to("directory/employee_ranks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/utilities/directory/employee_ranks/1").should route_to("directory/employee_ranks#destroy", :id => "1")
    end

  end
end
