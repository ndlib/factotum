require 'spec_helper'

describe MonographicOrder do
  [:author, :title, :publication_year, :publication_place, :publisher, :fund, :cataloging_location].each do |field|
    it "should require #{field}" do
      record = FactoryGirl.build(:monographic_order, field => nil)
      record.valid?.should be_false
      record.errors_on(field).size.should >= 1
      record.send("#{field}=","Test")
      record.valid?.should be_true
    end
  end
  
  it "should require rush_order_reason if it is a rush order" do
    record = FactoryGirl.build(:monographic_order, :rush_order => true)
    record.valid?.should be_false
    record.errors_on(:rush_order_reason).size.should >= 1
    record.rush_order_reason = "A reason"
    record.valid?.should be_true
  end
end
