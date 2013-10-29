require "spec_helper"

describe Directory::EmployeesController do
  describe "routing" do

    it "routes to #index" do
      get("/utilities/directory/employees").should route_to("directory/employees#index")
    end

    it "routes to #new" do
      get("/utilities/directory/employees/new").should route_to("directory/employees#new")
    end

    it "routes to #show" do
      get("/utilities/directory/employees/1").should route_to("directory/employees#show", :id => "1")
    end

    it "routes to #edit" do
      get("/utilities/directory/employees/1/edit").should route_to("directory/employees#edit", :id => "1")
    end

    it "routes to #create" do
      post("/utilities/directory/employees").should route_to("directory/employees#create")
    end

    it "routes to #update" do
      put("/utilities/directory/employees/1").should route_to("directory/employees#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/utilities/directory/employees/1").should route_to("directory/employees#destroy", :id => "1")
    end

  end
end
