require 'spec_helper'

describe AcquisitionOrderSearch do
  before do
    @orders = 5.times.collect do |i|
      FactoryGirl.create(:acquisition_order, created_at: i.days.ago)
    end
  end

  it "by default returns all orders descending by time created" do
    results = subject.search()
    results.base_class.should be == AcquisitionOrder
    results.count.should be == @orders.count
    ordered_orders = AcquisitionOrder.order("created_at DESC")
    results.each_with_index do |order,index|
      order.should == ordered_orders[index]
    end
  end

  it "searches with a end date" do
    end_date = 2.days.ago
    search = AcquisitionOrderSearch.new(end_date: end_date.strftime("%-m/%-d/%Y"))
    results = search.search()
    results.count.should be == 3
    results.each do |order|
      order.created_at.to_date.should be <= end_date.to_date
    end
  end

  it "searches with a start date" do
    start_date = 2.days.ago
    search = AcquisitionOrderSearch.new(start_date: start_date.strftime("%-m/%-d/%Y"))
    results = search.search()
    results.count.should be == 3
    results.each do |order|
      order.created_at.to_date.should be >= start_date.to_date
    end
  end

  it "searches by selector" do
    selector = FactoryGirl.create(:selector)
    3.times do |i|
      @orders[i].update_attributes!(selector: selector)
    end
    search = AcquisitionOrderSearch.new(selector_netid: selector.netid)
    results = search.search()
    results.count.should be == 3
    results.each do |order|
      order.selector.should be == selector
    end
  end

  it "searches by creator" do
    creator = FactoryGirl.create(:user)
    3.times do |i|
      @orders[i].update_attributes!(creator: creator)
    end
    search = AcquisitionOrderSearch.new(creator_netid: creator.netid)
    results = search.search()
    results.count.should be == 3
    results.each do |order|
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
    search = AcquisitionOrderSearch.new(creator_netid: creator.netid, selector_netid: selector.netid, start_date: start_date.strftime("%-m/%-d/%Y"), end_date: end_date.strftime("%-m/%-d/%Y"))
    results = search.search()
    results.count.should be == 2
    results.each do |order|
      order.creator.should be == creator
      order.selector.should be == selector
      order.created_at.to_date.should be >= start_date.to_date
      order.created_at.to_date.should be <= end_date.to_date
    end
  end
end
