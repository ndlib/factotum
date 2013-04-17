require 'spec_helper'

describe User do

  describe "non-selector" do
    before do
      @user = FactoryGirl.create(:user)
    end

    it '#selector? should be false' do
      @user.selector?.should be_false
    end

    it '#monographic_selector? should be false' do
      @user.monographic_selector?.should be_false
    end

    it "should provide a list of monographic orders created by the user" do
      FactoryGirl.create(:monographic_order)
      FactoryGirl.create_list(:monographic_order, 2, creator: @user)
      orders = @user.monographic_orders
      orders.count.should eq(2)
      orders.each do |order|
        order.creator.should eq(@user)
      end
    end
  end

  describe "selector" do
    before do
      selector = FactoryGirl.create(:selector, monographic: true)
      @user = selector.user
    end

    it '#selector? should be true' do
      @user.selector?.should be_true
    end

    it '#monographic_selector? should be true' do
      @user.monographic_selector?.should be_true
    end

    it "should provide a list of monographic orders created for the selector" do
      FactoryGirl.create(:monographic_order)
      FactoryGirl.create(:monographic_order, creator: @user)
      FactoryGirl.create_list(:monographic_order, 2, selector: @user.selector)
      orders = @user.monographic_orders
      orders.count.should eq(2)
      orders.each do |order|
        order.selector.should eq(@user.selector)
      end
    end
  end

  describe "selector_admin" do
    before do
      selector_admin = FactoryGirl.create(:selector_admin)
      @user = selector_admin.user
    end

    it '#selector_admin? should be true' do
      @user.selector_admin?.should be_true
    end

    it "should provide a list of all monographic orders" do
      FactoryGirl.create(:monographic_order)
      FactoryGirl.create(:monographic_order, selector: @user.selector)
      FactoryGirl.create(:monographic_order, creator: @user)
      MonographicOrder.count.should eq(3)
      orders = @user.monographic_orders
      orders.count.should eq(MonographicOrder.count)
    end
  end

  describe "ldap", :connects_to_ldap => true do
    before do
      remove_user_ldap_stub
    end

    it "should store attributes from ldap" do
      subject.username = 'jkennel'
      subject.should be_valid
      subject.save
      subject.display_name.should be == "Jaron Kennel"
      subject.email.should be == "jkennel@nd.edu"
      subject.first_name.should be == "Jaron"
      subject.last_name.should be == "Kennel"
    end

    it "should not fail to save a user if no ldap record could be found" do
      subject.username = 'foo'
      subject.should be_valid
      subject.save
      subject.display_name.should be_nil
      subject.email.should be_nil
      subject.first_name.should be_nil
      subject.last_name.should be_nil
    end
  end

  it "#receive_order_emails? defaults to true" do
    u = User.new
    u.receive_order_emails?.should be_true
  end

end
