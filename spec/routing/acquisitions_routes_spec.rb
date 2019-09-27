require 'rails_helper'

describe 'Acquisitions Routes' do
  describe "MonographicOrders" do
    it "should route to the index" do
      expect({ get: "/utilities/acquisitions/order" }).
        to route_to(
          controller: "monographic_orders",
          action: "recent_orders"
        )
    end

    it "should route to the index csv download" do
      expect({ get: "/utilities/acquisitions/order/orders.csv" }).
        to route_to(
          controller: "monographic_orders",
          action: "index",
          format: :csv
        )
    end
  end

  describe "JustSayYesOrders" do
    it "should route to the index" do
      expect({ get: "/utilities/acquisitions/order/just_say_yes" }).
        to route_to(
          controller: "just_say_yes_orders",
          action: "index"
        )
    end
  end

  describe "Selectors" do
    it "should route to the index" do
      expect({ get: "/utilities/acquisitions/order/admin" }).
        to route_to(
          controller: "selectors",
          action: "index"
        )
    end
  end

  describe "AcquisitionsExports" do
    it "should route to the index" do
      expect({ get: "/utilities/acquisitions/order/export" }).
        to route_to(
          controller: "acquisition_exports",
          action: "index"
        )
    end
  end
end
