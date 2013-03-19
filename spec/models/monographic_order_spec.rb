require 'spec_helper'

describe MonographicOrder do
  [:cataloging_location].each do |field|
    it "should require #{field}" do
      order = MonographicOrder.new
      expect(order).to have(1).error_on(field)
      order.send("#{field}=","Test")
      expect(order).to have(0).errors_on(field)
    end
  end

  it "should not require cataloging_location if cataloging_location_other is set" do
    order = MonographicOrder.new(cataloging_location: nil)
    expect(order).to have(1).error_on(:cataloging_location)
    order.cataloging_location_other = "Another location"
    expect(order).to have(0).errors_on(:cataloging_location)
  end

  it "should require rush_order_reason if it is a rush order" do
    order = MonographicOrder.new(:rush_order => true)
    expect(order).to have(1).error_on(:rush_order_reason)
    order.rush_order_reason = "A reason"
    expect(order).to have(0).errors_on(:rush_order_reason)
  end

  it "should not require rush_order_reason if rush_order_reason_other is set" do
    order = MonographicOrder.new(rush_order: true)
    expect(order).to have(1).error_on(:rush_order_reason)
    order.rush_order_reason_other = "A reason"
    expect(order).to have(0).errors_on(:rush_order_reason)
  end

  describe 'self' do
    subject { MonographicOrder }

    describe '#selector_cataloging_locations' do
      it "returns a hash" do
        expect(subject.selector_cataloging_locations).to be_a_kind_of Hash
      end

      it "has the locations used by a selector" do
        order = FactoryGirl.create(:monographic_order, cataloging_location: 'A')
        locations = subject.selector_cataloging_locations[order.selector.netid]
        expect(locations).to be_a_kind_of Array
        expect(locations[0]).to be == 'A'
      end

      it "orders the locations by number of times used" do
        selector = FactoryGirl.create(:selector)
        FactoryGirl.create_list(:monographic_order, 3, selector: selector, cataloging_location: 'A')
        FactoryGirl.create_list(:monographic_order, 1, selector: selector, cataloging_location: 'B')
        FactoryGirl.create_list(:monographic_order, 2, selector: selector, cataloging_location: 'C')
        locations = subject.selector_cataloging_locations[selector.netid]
        expect(locations[0]).to be == 'A'
        expect(locations[1]).to be == 'C'
        expect(locations[2]).to be == 'B'
      end
    end
  end
end
