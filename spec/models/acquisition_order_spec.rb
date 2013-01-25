require 'spec_helper'

describe AcquisitionOrder do
  it "should have a valid factory" do
    FactoryGirl.create(:acquisition_order).should be_valid
  end

  [:author, :title, :publication_year, :publisher, :fund].each do |field|
    it "should require #{field}" do
      order = AcquisitionOrder.new
      order.should have(1).error_on(field)
      order.send("#{field}=","Test")
      order.should have(0).errors_on(field)
    end
  end
  
  it "should not require author if author is unknown" do
    order = AcquisitionOrder.new
    order.should have(1).error_on(:author)
    order.author_unknown = true
    order.should have(0).errors_on(:author)
  end
end
