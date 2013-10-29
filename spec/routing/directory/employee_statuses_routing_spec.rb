require "spec_helper"

describe Directory::EmployeeStatusesController do
  describe "routing" do

    it "routes to #index" do
      get("/utilities/directory/employee_statuses").should route_to("directory/employee_statuses#index")
    end

    it "routes to #new" do
      get("/utilities/directory/employee_statuses/new").should route_to("directory/employee_statuses#new")
    end

    it "routes to #show" do
      get("/utilities/directory/employee_statuses/1").should route_to("directory/employee_statuses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/utilities/directory/employee_statuses/1/edit").should route_to("directory/employee_statuses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/utilities/directory/employee_statuses").should route_to("directory/employee_statuses#create")
    end

    it "routes to #update" do
      put("/utilities/directory/employee_statuses/1").should route_to("directory/employee_statuses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/utilities/directory/employee_statuses/1").should route_to("directory/employee_statuses#destroy", :id => "1")
    end

  end
end
