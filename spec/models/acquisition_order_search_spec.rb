require 'spec_helper'

describe AcquisitionOrderSearch do
  context do
    before do
      @orders = 3.times.collect do |i|
        FactoryGirl.create(:acquisition_order, created_at: i.days.ago)
      end
    end

    it "by default returns all orders" do
      results = subject.search()
      results.base_class.should be == AcquisitionOrder
      results.count.should be == @orders.count
    end

    it "has a default order of created_at descending" do
      ordered_orders = AcquisitionOrder.order("created_at DESC")
      subject.each_with_index do |order,index|
        order.should == ordered_orders[index]
      end
    end

    it "responds to #count" do
      subject.count.should be == @orders.count
    end

    it "responds to #where" do
      where = subject.where(id: @orders.first.id)
      where.should be_a_kind_of ActiveRecord::Relation
      where.count.should be == 1
    end

    it "responds to #each" do
      subject.each do |order|
        order.class.base_class.should be == AcquisitionOrder
      end
    end

    it "searches an ActiveRecord::Relation" do
      subject.search_object = AcquisitionOrder.where(id: @orders.first.id)
      results = subject.search()
      results.base_class.should be == AcquisitionOrder
      results.count.should be == 1
    end

    it "searches with a end date" do
      end_date = 1.days.ago
      subject.end_date = end_date.strftime("%-m/%-d/%Y")
      subject.count.should be == 2
      subject.each do |order|
        order.created_at.to_date.should be <= end_date.to_date
      end
    end

    it "searches with a start date" do
      start_date = 1.days.ago
      subject.start_date = start_date.strftime("%-m/%-d/%Y")
      subject.count.should be == 2
      subject.each do |order|
        order.created_at.to_date.should be >= start_date.to_date
      end
    end
  end

  it "searches by selector" do
    FactoryGirl.create(:acquisition_order)
    selector = FactoryGirl.create(:selector)
    FactoryGirl.create_list(:acquisition_order, 2, selector: selector)
    subject.selector_netid = selector.netid
    subject.count.should be == 2
    subject.each do |order|
      order.selector.should be == selector
    end
  end

  it "searches by creator" do
    FactoryGirl.create(:acquisition_order)
    creator = FactoryGirl.create(:user)
    FactoryGirl.create_list(:acquisition_order, 2, creator: creator)
    subject.creator_netid = creator.netid
    subject.count.should be == 2
    subject.each do |order|
      order.creator.should be == creator
    end
  end

  it "searches all fields at once" do
    selector = FactoryGirl.create(:selector)
    creator = FactoryGirl.create(:user)
    start_date = 2.days.ago
    end_date = 1.days.ago
    5.times do |i|
      FactoryGirl.create(:acquisition_order, creator: creator, selector: selector, created_at: i.days.ago)
    end
    search = subject.class.new(creator_netid: creator.netid, selector_netid: selector.netid, start_date: start_date.strftime("%-m/%-d/%Y"), end_date: end_date.strftime("%-m/%-d/%Y"))
    search.count.should be == 2
    search.each do |order|
      order.creator.should be == creator
      order.selector.should be == selector
      order.created_at.to_date.should be >= start_date.to_date
      order.created_at.to_date.should be <= end_date.to_date
    end
  end

  describe "#present?" do
    it "is false for a new search" do
      subject.present?.should be_false
    end

    {start_date: Date.today, end_date: Date.today, creator_netid: "example", selector_netid: "example"}.each do |field, value|
      it "is true if #{field} is set" do
        subject.send("#{field}=", value)
        subject.present?.should be_true
      end
    end
  end

  context "pagination" do
    before do
      # create a selector to speed up creation of multiple orders
      selector = FactoryGirl.create(:selector)
      @orders = FactoryGirl.create_list(:acquisition_order, 40, selector: selector, creator: selector.user)
    end

    it "limits to 25 results" do
      subject.page.count.should be == 25
    end

    it "displays results on the second page" do
      subject.set_page(2)
      subject.page.count.should be == 15
    end
  end
end
