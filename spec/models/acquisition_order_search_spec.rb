require 'rails_helper'

describe AcquisitionOrderSearch do
  context do
    before do
      @orders = 3.times.collect do |i|
        FactoryBot.create(:acquisition_order, created_at: i.days.ago)
      end
    end

    it "by default returns all orders" do
      results = subject.search()
      expect(results.base_class).to eq(AcquisitionOrder)
      expect(results.count).to eq(@orders.count)
    end

    it "has a default order of created_at descending" do
      ordered_orders = AcquisitionOrder.order("created_at DESC")
      subject.each_with_index do |order,index|
        expect(order).to eq(ordered_orders[index])
      end
    end

    it "responds to #count" do
      expect(subject.count).to eq(@orders.count)
    end

    it "responds to #where" do
      where = subject.where(id: @orders.first.id)
      expect(where).to be_a_kind_of ActiveRecord::Relation
      expect(where.count).to eq(1)
    end

    it "responds to #each" do
      subject.each do |order|
        expect(order.class.base_class).to eq(AcquisitionOrder)
      end
    end

    it "searches an ActiveRecord::Relation" do
      subject.search_object = AcquisitionOrder.where(id: @orders.first.id)
      results = subject.search()
      expect(results.base_class).to eq(AcquisitionOrder)
      expect(results.count).to eq(1)
    end

    it "searches with a end date" do
      end_date = 1.days.ago
      subject.end_date = end_date.strftime("%-m/%-d/%Y")
      expect(subject.count).to eq(2)
      subject.each do |order|
        expect(order.created_at.to_date).to be <= end_date.to_date
      end
    end

    it "searches with a start date" do
      start_date = 1.days.ago
      subject.start_date = start_date.strftime("%-m/%-d/%Y")
      expect(subject.count).to eq(2)
      subject.each do |order|
        expect(order.created_at.to_date).to be >= start_date.to_date
      end
    end
  end

  it "searches by selector" do
    FactoryBot.create(:acquisition_order)
    selector = FactoryBot.create(:selector)
    FactoryBot.create_list(:acquisition_order, 2, selector: selector)
    subject.selector_netid = selector.netid
    expect(subject.count).to eq(2)
    subject.each do |order|
      expect(order.selector).to eq(selector)
    end
  end

  it "searches by creator" do
    FactoryBot.create(:acquisition_order)
    creator = FactoryBot.create(:user)
    FactoryBot.create_list(:acquisition_order, 2, creator: creator)
    subject.creator_netid = creator.netid
    expect(subject.count).to eq(2)
    subject.each do |order|
      expect(order.creator).to eq(creator)
    end
  end

  it "searches all fields at once" do
    selector = FactoryBot.create(:selector)
    creator = FactoryBot.create(:user)
    start_date = 2.days.ago
    end_date = 1.days.ago
    5.times do |i|
      FactoryBot.create(:acquisition_order, creator: creator, selector: selector, created_at: i.days.ago)
    end
    search = subject.class.new(creator_netid: creator.netid, selector_netid: selector.netid, start_date: start_date.strftime("%-m/%-d/%Y"), end_date: end_date.strftime("%-m/%-d/%Y"))
    expect(search.count).to eq(2)
    search.each do |order|
      expect(order.creator).to eq(creator)
      expect(order.selector).to eq(selector)
      expect(order.created_at.to_date).to be >= start_date.to_date
      expect(order.created_at.to_date).to be <= end_date.to_date
    end
  end

  describe "#present?" do
    it "is false for a new search" do
      expect(subject.present?).to be_falsey
    end

    {start_date: Date.today, end_date: Date.today, creator_netid: "example", selector_netid: "example"}.each do |field, value|
      it "is true if #{field} is set" do
        subject.send("#{field}=", value)
        expect(subject.present?).to be_truthy
      end
    end
  end

  context "pagination" do
    before do
      # create a selector to speed up creation of multiple orders
      selector = FactoryBot.create(:selector)
      @orders = FactoryBot.create_list(:acquisition_order, 40, selector: selector, creator: selector.user)
    end

    it "limits to 25 results" do
      expect(subject.page.count).to eq(25)
    end

    it "displays results on the second page" do
      subject.set_page(2)
      expect(subject.page.count).to eq(15)
    end
  end
end
