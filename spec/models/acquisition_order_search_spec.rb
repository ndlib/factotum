require 'spec_helper'

describe AcquisitionOrderSearch do
  before do
    @orders = []
    5.times do |i|
      @orders << FactoryGirl.create(:acquisition_order, created_at: i.days.ago(Time.now()))
    end
  end

  it "by default returns all orders descending by time created" do
    results = subject.search()
    results.base_class.should == AcquisitionOrder
    results.count.should == @orders.count
    ordered_orders = AcquisitionOrder.order("created_at DESC")
    results.each_with_index do |order,index|
      order.should == ordered_orders[index]
    end
  end

  it "searches with a end date" do
    end_date = 2.days.ago(Date.today)
    search = AcquisitionOrderSearch.new(end_date: end_date)
    results = search.search()
    results.count.should == 3
    results.each do |order|
      order.created_at.to_date.should be <= end_date
    end
  end

  it "searches with a start date" do
    start_date = 2.days.ago(Date.today)
    search = AcquisitionOrderSearch.new(start_date: start_date)
    results = search.search()
    results.count.should == 3
    results.each do |order|
      order.created_at.to_date.should be >= start_date
    end
  end
end
