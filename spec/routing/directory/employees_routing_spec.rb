require "spec_helper"

describe Directory::EmployeesController do
  describe "routing" do

    it "routes to #index" do
      expect(get("/directory/employees")).to route_to("directory/employees#index")
    end

    it "routes to #show" do
      expect(get("/directory/employees/1")).to route_to("directory/employees#show", :id => "1")
    end


  end
end
