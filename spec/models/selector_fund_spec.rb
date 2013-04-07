require 'spec_helper'

describe SelectorFund do

  describe "Created through selector" do
    VALID_FUND_NAMES = ["FUND1", "FUND2", "FUND3", "FUND4"]

    before(:each) do
      @selector = FactoryGirl.create(:selector)
    end

    it "should add funds from a block of text" do
      @selector.selector_funds.destroy_all
      @selector.selector_funds.count.should == 0
      @selector.funds_text = VALID_FUND_NAMES.join("\n")
      @selector.save.should be_true
      @selector.selector_funds.count.should == VALID_FUND_NAMES.size
    end

    it "should automatically uppercase fund names" do
      @selector.funds_text = VALID_FUND_NAMES.collect{|n| n.downcase}.join("\n")
      @selector.save.should be_true
      @selector.selector_funds.count.should == VALID_FUND_NAMES.size
      @selector.selector_funds.each do |fund|
        fund.name.should == fund.name.upcase
      end
    end

    it "should automatically deduplicate fund names" do
      @selector.funds_text = (VALID_FUND_NAMES + VALID_FUND_NAMES).join("\n")
      @selector.save.should be_true
      @selector.selector_funds.count.should == VALID_FUND_NAMES.size
    end
  end

  it "should require a selector" do
    fund = FactoryGirl.build(:selector_fund, :selector => nil)
    fund.should_not be_valid
  end

  it "should automatically trim and uppercase the fund name" do
    fund = FactoryGirl.build(:selector_fund, :name => " testfund1 ")
    fund.should be_valid
    fund.name.should == "TESTFUND1"
  end

  it "should only allow A-Z0-9 characters" do
    fund = FactoryGirl.build(:selector_fund, :name => "TEST_FUND1")
    fund.should_not be_valid
    fund.name = "TESTFUND1"
    fund.should be_valid
  end

  it "should enforce unique fund names per selector" do
    fund = FactoryGirl.create(:selector_fund)
    fund2 = FactoryGirl.build(:selector_fund, :name => fund.name, :selector => fund.selector)
    fund2.should_not be_valid
  end

  it "should allow the same fund name for multiple selectors" do
    fund = FactoryGirl.create(:selector_fund)
    fund2 = FactoryGirl.build(:selector_fund, :name => fund.name)
    fund2.selector.should_not == fund.selector
    fund2.should be_valid
  end
end
