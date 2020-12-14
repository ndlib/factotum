require 'rails_helper'

describe SelectorFund do

  describe "Created through selector" do
    VALID_FUND_NAMES = ["FUND1", "FUND2", "FUND3", "FUND4"]

    before(:each) do
      @selector = FactoryBot.create(:selector)
    end

    it "should add funds from a block of text" do
      @selector.selector_funds.destroy_all
      expect(@selector.selector_funds.count).to eq(0)
      @selector.funds_text = VALID_FUND_NAMES.join("\n")
      expect(@selector.save).to be_truthy
      expect(@selector.selector_funds.count).to eq(VALID_FUND_NAMES.size)
    end

    it "should automatically uppercase fund names" do
      @selector.funds_text = VALID_FUND_NAMES.collect{|n| n.downcase}.join("\n")
      expect(@selector.save).to be_truthy
      expect(@selector.selector_funds.count).to eq(VALID_FUND_NAMES.size)
      @selector.selector_funds.each do |fund|
        expect(fund.name).to eq(fund.name.upcase)
      end
    end

    it "should automatically deduplicate fund names" do
      @selector.funds_text = (VALID_FUND_NAMES + VALID_FUND_NAMES).join("\n")
      expect(@selector.save).to be_truthy
      expect(@selector.selector_funds.count).to eq(VALID_FUND_NAMES.size)
    end
  end

  it "should require a selector" do
    fund = FactoryBot.build(:selector_fund, :selector => nil)
    expect(fund).not_to be_valid
  end

  it "should automatically trim and uppercase the fund name" do
    fund = FactoryBot.build(:selector_fund, :name => " testfund1 ")
    expect(fund).to be_valid
    expect(fund.name).to eq("TESTFUND1")
  end

  it "should only allow A-Z0-9 characters" do
    fund = FactoryBot.build(:selector_fund, :name => "TEST_FUND1")
    expect(fund).not_to be_valid
    fund.name = "TESTFUND1"
    expect(fund).to be_valid
  end

  it "should enforce unique fund names per selector" do
    fund = FactoryBot.create(:selector_fund)
    fund2 = FactoryBot.build(:selector_fund, :name => fund.name, :selector => fund.selector)
    expect(fund2).not_to be_valid
  end

  it "should allow the same fund name for multiple selectors" do
    fund = FactoryBot.create(:selector_fund)
    fund2 = FactoryBot.build(:selector_fund, :name => fund.name)
    expect(fund2.selector).not_to eq(fund.selector)
    expect(fund2).to be_valid
  end
end
