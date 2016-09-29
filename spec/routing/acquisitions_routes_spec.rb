require 'rails_helper'

describe 'Acquisitions Routes' do
  describe "MonographicOrders" do
    it "should route to the index" do
      { get: "/utilities/acquisitions/order" }.
        should route_to(
          controller: "monographic_orders",
          action: "index"
        )
    end

    it "should route to the index csv download" do
      { get: "/utilities/acquisitions/order/orders.csv" }.
        should route_to(
          controller: "monographic_orders",
          action: "index",
          format: :csv
        )
    end
  end

  describe "JustSayYesOrders" do
    it "should route to the index" do
      { get: "/utilities/acquisitions/order/just_say_yes" }.
        should route_to(
          controller: "just_say_yes_orders",
          action: "index"
        )
    end
  end

  describe "Selectors" do
    it "should route to the index" do
      { get: "/utilities/acquisitions/order/admin" }.
        should route_to(
          controller: "selectors",
          action: "index"
        )
    end
  end

  describe "AcquisitionsExports" do
    it "should route to the index" do
      { get: "/utilities/acquisitions/order/export" }.
        should route_to(
          controller: "acquisition_exports",
          action: "index"
        )
    end
  end
end
