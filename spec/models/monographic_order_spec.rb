require 'spec_helper'

describe MonographicOrder do
  [:cataloging_location].each do |field|
    it "should require #{field}" do
      order = MonographicOrder.new
      order.should have(1).error_on(field)
      order.send("#{field}=","Test")
      order.should have(0).errors_on(field)
    end
  end

  it "should not require cataloging_location if cataloging_location_other is set"
  
  it "should require rush_order_reason if it is a rush order" do
    order = MonographicOrder.new(:rush_order => true)
    order.should have(1).error_on(:rush_order_reason)
    order.rush_order_reason = "A reason"
    order.should have(0).errors_on(:rush_order_reason)
  end

  it "should not require rush_order_reason if rush_order_reason_other is set"
end
