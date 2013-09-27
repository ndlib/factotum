require "spec_helper"

describe Directory::EmployeeUnitsController do
  describe "routing" do

    it "routes to #index" do
      get("/directory/employee_units").should route_to("directory/employee_units#index")
    end

    it "routes to #new" do
      get("/directory/employee_units/new").should route_to("directory/employee_units#new")
    end

    it "routes to #show" do
      get("/directory/employee_units/1").should route_to("directory/employee_units#show", :id => "1")
    end

    it "routes to #edit" do
      get("/directory/employee_units/1/edit").should route_to("directory/employee_units#edit", :id => "1")
    end

    it "routes to #create" do
      post("/directory/employee_units").should route_to("directory/employee_units#create")
    end

    it "routes to #update" do
      put("/directory/employee_units/1").should route_to("directory/employee_units#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/directory/employee_units/1").should route_to("directory/employee_units#destroy", :id => "1")
    end

  end
end
