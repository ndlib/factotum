require "spec_helper"

describe Directory::EmployeesController do
  describe "routing" do

    it "routes to #index" do
      get("/utilities/directory/employees").should route_to("directory/employees#index")
    end

    it "routes to #show" do
      get("/utilities/directory/employees/1").should route_to("directory/employees#show", :id => "1")
    end


  end
end
