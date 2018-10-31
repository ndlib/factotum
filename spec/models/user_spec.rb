require 'rails_helper'

describe User do

  describe "non-selector" do
    before do
      @user = FactoryGirl.create(:user)
    end

    it '#selector? should be false' do
      expect(@user.selector?).to be_falsey
    end

    it '#monographic_selector? should be false' do
      expect(@user.monographic_selector?).to be_falsey
    end

    it "should provide a list of monographic orders created by the user" do
      FactoryGirl.create(:monographic_order)
      FactoryGirl.create_list(:monographic_order, 2, creator: @user)
      orders = @user.monographic_orders
      expect(orders.count).to eq(2)
      orders.each do |order|
        expect(order.creator).to eq(@user)
      end
    end
  end

  describe "selector" do
    before do
      selector = FactoryGirl.create(:selector, monographic: true)
      @user = selector.user
    end

    it '#selector? should be true' do
      expect(@user.selector?).to be_truthy
    end

    it '#monographic_selector? should be true' do
      expect(@user.monographic_selector?).to be_truthy
    end

    it "should provide a list of monographic orders created for the selector" do
      FactoryGirl.create(:monographic_order)
      FactoryGirl.create(:monographic_order, creator: @user)
      FactoryGirl.create_list(:monographic_order, 2, selector: @user.selector)
      orders = @user.monographic_orders
      expect(orders.count).to eq(2)
      orders.each do |order|
        expect(order.selector).to eq(@user.selector)
      end
    end
  end

  describe "selector_admin" do
    before do
      selector_admin = FactoryGirl.create(:selector_admin)
      @user = selector_admin.user
    end

    it '#selector_admin? should be true' do
      expect(@user.selector_admin?).to be_truthy
    end

    it "should provide a list of all monographic orders" do
      FactoryGirl.create(:monographic_order)
      FactoryGirl.create(:monographic_order, selector: @user.selector)
      FactoryGirl.create(:monographic_order, creator: @user)
      expect(MonographicOrder.count).to eq(3)
      orders = @user.monographic_orders
      expect(orders.count).to eq(MonographicOrder.count)
    end
  end

  describe "ldap", :connects_to_ldap => true do
    before do
      remove_user_ldap_stub
    end

    it "should store attributes from ldap" do
      subject.username = 'rfox2'
      expect(subject).to be_valid
      subject.save
      expect(subject.display_name).to eq("Robert Fox")
      expect(subject.email).to eq("rfox2@nd.edu")
      expect(subject.first_name).to eq("Robert")
      expect(subject.last_name).to eq("Fox")
    end

    it "should not fail to save a user if no ldap record could be found" do
      subject.username = 'foo'
      expect(subject).to be_valid
      subject.save
      expect(subject.display_name).to be_nil
      expect(subject.email).to be_nil
      expect(subject.first_name).to be_nil
      expect(subject.last_name).to be_nil
    end
  end

  it "#receive_order_emails? defaults to true" do
    u = User.new
    expect(u.receive_order_emails?).to be_truthy
  end

end
