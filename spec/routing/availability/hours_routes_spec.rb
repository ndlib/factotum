require 'rails_helper'

describe 'Hours Routes' do
  describe "HoursOrders" do
    it "should route to the index" do
      expect({ :get => "/utilities/availability/service_points/1/hours/" }).to route_to(
                action: "index", controller: "availability/hours", service_point_id: "1"
             )
    end

    it "should route to the destroy" do
      expect({ :delete => "/utilities/availability/service_points/1/hours/1" }).to route_to(
            controller: "availability/hours", action: "destroy", service_point_id: "1", id: "1"
          )
    end

    it "should not route to the show" do
      expect({ :get => "/utilities/availability/service_points/1/hours/1" }).not_to be_routable
    end

    it "should not route to the new " do
      expect({ :get => "/utilities/availability/service_points/1/hours/new" }).not_to be_routable
    end

    it "should not route to the edit" do
      expect({ :get => "/utilities/availability/service_points/1/hours/edit" }).not_to be_routable
    end

    it "should not route to the create " do
      expect({ :post => "/utilities/availability/service_points/1/hours" }).not_to be_routable
    end

    it "should not route the update" do
      expect({ :put => "/utilities/availability/service_points/1/hours/1" }).not_to be_routable
    end
  end


  describe "RegularHoursRoutes" do
    it "does not route to the index" do
      expect({ :get => "/utilities/availability/service_points/1/regular_hours" }).not_to be_routable
    end

    it "does not route to the destroy" do
      expect({ :delete => "/utilities/availability/service_points/1/regular_hours/1" }).not_to be_routable
    end

    it "does not route to the show" do
      expect({ :get => "/utilities/availability/service_points/1/regular_hours/1" }).not_to be_routable
    end

    it "routes to the new " do
      expect({ :get => "/utilities/availability/service_points/1/regular_hours/new" }).to route_to(
            action: "new", controller: "availability/regular_hours", service_point_id: "1"
          )
    end

    it "routes to the create " do
      expect({ :post => "/utilities/availability/service_points/1/regular_hours" }).to route_to(
            action: "create", controller: "availability/regular_hours", service_point_id: "1"
      )
    end

    it "routes to the edit " do
      expect({ :get => "/utilities/availability/service_points/1/regular_hours/1/edit" }).to route_to(
          action: "edit", controller: "availability/regular_hours", service_point_id: "1", id: "1"
      )
    end

    it "routes to the update " do
      expect({ :put => "/utilities/availability/service_points/1/regular_hours/1" }).to route_to(
          action: "update", controller: "availability/regular_hours", service_point_id: "1", id: "1"
      )
    end

  end


  describe "HoursExceptionRoutes" do
    it "does not route to the index" do
      expect({ :get => "/utilities/availability/service_points/1/hours_exceptions" }).not_to be_routable
    end

    it "does not route to the destroy" do
      expect({ :delete => "/utilities/availability/service_points/1/hours_exceptions/1" }).not_to be_routable
    end

    it "does not route to the show" do
      expect({ :get => "/utilities/availability/service_points/1/hours_exceptions/1" }).not_to be_routable
    end

    it "routes to the new " do
      expect({ :get => "/utilities/availability/service_points/1/hours_exceptions/new" }).to route_to(
        action: "new", controller: "availability/hours_exceptions", service_point_id: "1"
      )
    end

    it "routes to the create " do
      expect({ :post => "/utilities/availability/service_points/1/hours_exceptions" }).to route_to(
        action: "create", controller: "availability/hours_exceptions", service_point_id: "1"
      )
    end

    it "routes to the edit " do
      expect({ :get => "/utilities/availability/service_points/1/hours_exceptions/1/edit" }).to route_to(
        action: "edit", controller: "availability/hours_exceptions", service_point_id: "1", id: "1"
      )
    end

    it "routes to the update " do
      expect({ :put => "/utilities/availability/service_points/1/hours_exceptions/1" }).to route_to(
          action: "update", controller: "availability/hours_exceptions", service_point_id: "1", id: "1"
      )
    end
  end

end
