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
end
