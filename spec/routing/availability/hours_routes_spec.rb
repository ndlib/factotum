require 'rails_helper'

describe 'Hours Routes' do
  describe "HoursOrders" do
    it "should route to the index" do
      { :get => "/utilities/availability/service_points/1/hours/" }.should route_to(
                action: "index", controller: "availability/hours", service_point_id: "1"
             )
    end

    it "should route to the destroy" do
      { :delete => "/utilities/availability/service_points/1/hours/1" }.should route_to(
            controller: "availability/hours", action: "destroy", service_point_id: "1", id: "1"
          )
    end

    it "should not route to the show" do
      { :get => "/utilities/availability/service_points/1/hours/1" }.should_not be_routable
    end

    it "should not route to the new " do
      { :get => "/utilities/availability/service_points/1/hours/new" }.should_not be_routable
    end

    it "should not route to the edit" do
      { :get => "/utilities/availability/service_points/1/hours/edit" }.should_not be_routable
    end

    it "should not route to the create " do
      { :post => "/utilities/availability/service_points/1/hours" }.should_not be_routable
    end

    it "should not route the update" do
      { :put => "/utilities/availability/service_points/1/hours/1" }.should_not be_routable
    end
  end


  describe "RegularHoursRoutes" do
    it "does not route to the index" do
      { :get => "/utilities/availability/service_points/1/regular_hours" }.should_not be_routable
    end

    it "does not route to the destroy" do
      { :delete => "/utilities/availability/service_points/1/regular_hours/1" }.should_not be_routable
    end

    it "does not route to the show" do
      { :get => "/utilities/availability/service_points/1/regular_hours/1" }.should_not be_routable
    end

    it "routes to the new " do
      { :get => "/utilities/availability/service_points/1/regular_hours/new" }.should route_to(
            action: "new", controller: "availability/regular_hours", service_point_id: "1"
          )
    end

    it "routes to the create " do
      { :post => "/utilities/availability/service_points/1/regular_hours" }.should route_to(
            action: "create", controller: "availability/regular_hours", service_point_id: "1"
      )
    end

    it "routes to the edit " do
      { :get => "/utilities/availability/service_points/1/regular_hours/1/edit" }.should route_to(
          action: "edit", controller: "availability/regular_hours", service_point_id: "1", id: "1"
      )
    end

    it "routes to the update " do
      { :put => "/utilities/availability/service_points/1/regular_hours/1" }.should route_to(
          action: "update", controller: "availability/regular_hours", service_point_id: "1", id: "1"
      )
    end

  end


  describe "HoursExceptionRoutes" do
    it "does not route to the index" do
      { :get => "/utilities/availability/service_points/1/hours_exceptions" }.should_not be_routable
    end

    it "does not route to the destroy" do
      { :delete => "/utilities/availability/service_points/1/hours_exceptions/1" }.should_not be_routable
    end

    it "does not route to the show" do
      { :get => "/utilities/availability/service_points/1/hours_exceptions/1" }.should_not be_routable
    end

    it "routes to the new " do
      { :get => "/utilities/availability/service_points/1/hours_exceptions/new" }.should route_to(
        action: "new", controller: "availability/hours_exceptions", service_point_id: "1"
      )
    end

    it "routes to the create " do
      { :post => "/utilities/availability/service_points/1/hours_exceptions" }.should route_to(
        action: "create", controller: "availability/hours_exceptions", service_point_id: "1"
      )
    end

    it "routes to the edit " do
      { :get => "/utilities/availability/service_points/1/hours_exceptions/1/edit" }.should route_to(
        action: "edit", controller: "availability/hours_exceptions", service_point_id: "1", id: "1"
      )
    end

    it "routes to the update " do
      { :put => "/utilities/availability/service_points/1/hours_exceptions/1" }.should route_to(
          action: "update", controller: "availability/hours_exceptions", service_point_id: "1", id: "1"
      )
    end
  end

end
