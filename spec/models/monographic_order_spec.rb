require 'spec_helper'

describe MonographicOrder do
  [:author, :title, :publication_year, :publisher, :fund, :cataloging_location].each do |field|
    it "should require #{field}" do
      record = FactoryGirl.build(:monographic_order, field => nil)
      record.valid?.should be_false
      record.errors[field].size.should >= 1
      record.send("#{field}=","Test")
      record.valid?
      puts record.errors.full_messages
      record.valid?.should be_true
    end
  end
  
  it "should not require author if author is unknown" do
    record = FactoryGirl.build(:monographic_order, :author => nil)
    record.valid?.should be_false
    record.author_unknown = true
    record.valid?.should be_true
  end
  
  it "should require rush_order_reason if it is a rush order" do
    record = FactoryGirl.build(:monographic_order, :rush_order => true)
    record.valid?.should be_false
    record.rush_order_reason = "A reason"
    record.valid?.should be_true
  end
end
