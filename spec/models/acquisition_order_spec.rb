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

  describe '#display_title' do
    before do
      @order = FactoryGirl.create(:acquisition_order, title: "A long title that is more than thirty characters")
    end

    it "should display the id" do
      @order.display_title.should match(/##{@order.id}/)
    end

    it "should truncate the title by default" do
      @order.display_title.should_not match(/#{Regexp.escape(@order.title)}/)
      @order.display_title.should match(/#{Regexp.escape(@order.title.truncate(30))}/)
    end

    it "should be able to display the full title" do
      @order.display_title(false).should match(/#{Regexp.escape(@order.title)}/)
    end

    it "should be able to customize the truncate length" do
      @order.display_title(10).should match(/#{Regexp.escape(@order.title.truncate(10))}/)
    end
  end
end
