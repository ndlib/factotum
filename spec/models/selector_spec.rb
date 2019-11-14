require 'rails_helper'

describe Selector do
  it "should strip whitespace and make the netid lowercase" do
    s = Selector.new(:netid => " TEST ")
    expect(s).to be_valid
    expect(s.netid).to eq("test")
  end

  it "should only allow a-z0-9 in netids" do
    s = Selector.new(:netid => "test_1")
    expect(s).not_to be_valid
  end

  it "should allow a-z0-9 in netids" do
    s = Selector.new(:netid => "test1")
    expect(s).to be_valid
  end

  it "should not allow duplicate netids" do
    s = FactoryBot.create(:selector)
    expect(s).to be_valid
    s2 = FactoryBot.build(:selector, :netid => s.netid)
    expect(s2).not_to be_valid
  end

  it "should autocreate a user" do
    selector = FactoryBot.create(:selector)
    expect(selector.user).to be_a_kind_of(User)
    expect(selector.user.username).to eq(selector.netid)
  end

  describe '#monographic_orders' do
    subject { FactoryBot.create(:selector) }

    it "lists monographic orders created for the selector" do
      FactoryBot.create(:monographic_order)
      FactoryBot.create_list(:monographic_order, 2, selector: subject)
      expect(subject.monographic_orders.count).to eq(2)
      subject.monographic_orders.each do |order|
        expect(order.selector).to eq(subject)
      end
    end
  end
end
