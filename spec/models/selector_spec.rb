require 'spec_helper'

describe Selector do
  it "should strip whitespace and make the netid lowercase" do
    s = Selector.new(:netid => " TEST ")
    s.should be_valid
    s.netid.should == "test"
  end

  it "should only allow a-z0-9 in netids" do
    s = Selector.new(:netid => "test_1")
    s.should_not be_valid
  end

  it "should allow a-z0-9 in netids" do
    s = Selector.new(:netid => "test1")
    s.should be_valid
  end

  it "should not allow duplicate netids" do
    s = FactoryGirl.create(:selector)
    s.should be_valid
    s2 = FactoryGirl.build(:selector, :netid => s.netid)
    s2.should_not be_valid
  end

  it "should autocreate a user" do
    selector = FactoryGirl.create(:selector)
    selector.user.should be_a_kind_of(User)
    selector.user.username.should eq(selector.netid)
  end

  describe '#monographic_orders' do
    subject { FactoryGirl.create(:selector) }

    it "lists monographic orders created for the selector" do
      FactoryGirl.create(:monographic_order)
      FactoryGirl.create_list(:monographic_order, 2, selector: subject)
      subject.monographic_orders.count.should eq(2)
      subject.monographic_orders.each do |order|
        order.selector.should be == subject
      end
    end
  end
end
