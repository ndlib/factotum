require 'spec_helper'

describe RefworksAdminBrowser do
  describe "#parse_password" do
    it "should find a password in html" do
      RefworksAdminBrowser.new.parse_password("The password has been reset to:&nbsp; <b>NS56US91</b>").should == "NS56US91"
    end
    
    it "should raise if it cannot find a password" do
      expect {RefworksAdminBrowser.new.parse_password("The password has been reset to:&nbsp; no password here") }.to raise_error(RefworksAdminBrowser::PasswordNotFound)
    end
  end
end

describe "Refworks Constants" do
  it "should have REFWORKS_ADMIN_USERNAME defined" do
    defined?(REFWORKS_ADMIN_USERNAME).should be_true, "REFWORKS_ADMIN_USERNAME should be defined in config/initializers/refworks_admin.rb"
  end
  
  it "should have REFWORKS_ADMIN_PASSWORD defined" do
    defined?(REFWORKS_ADMIN_PASSWORD).should be_true, "REFWORKS_ADMIN_PASSWORD should be defined in config/initializers/refworks_admin.rb"
  end
end

describe "Refworks Connection Test", :connects_to_refworks => true do

  it "should not log in with an incorrect password" do
    browser = RefworksAdminBrowser.new
    browser.logged_in?.should be_false
    expect {browser.log_in!(nil, 'foo')}.to raise_error(RefworksAdminBrowser::InvalidLogin)
    browser.logged_in?.should be_false
  end

  it "accesses the admin and downloads a parseable user list" do
    browser = RefworksAdminBrowser.new
    browser.logged_in?.should be_false
    browser.log_in!
    browser.logged_in?.should be_true
    
    raw_users = browser.get_user_list(3)
    parsed_users = RefworksCache.parse_raw_users(raw_users)
    parsed_users.should be_a_kind_of(Array)
    parsed_users.size.should >= 0
  end
  
  it "resets the password for the refworkstest user" do
    admin_browser = RefworksAdminBrowser.new
    
    test_login = refworks_test_user_attributes[:login]
    
    user = RefworksCache.find_by_login(test_login)
    if user.nil?
      raw_users = admin_browser.get_user_list(7)
      RefworksCache.cache_users!(raw_users)
      
      user = RefworksCache.find_by_login(test_login)
    end
    user.should be_a_kind_of(RefworksCache)
    
    password = admin_browser.reset_password_for!(user)
    password.should match(/[A-Z0-9]+/)
  end
  
  it "should raise if user details do not match refworks" do
    browser = RefworksAdminBrowser.new
    user = RefworksCache.create!(refworks_test_user_attributes.merge(:login => 'foobar'))
    expect { browser.reset_password_for!(user) }.to raise_error(RefworksAdminBrowser::InvalidUser)
    user.destroy
    user = RefworksCache.create!(refworks_test_user_attributes.merge(:email => 'foo@bar.com'))
    expect { browser.reset_password_for!(user) }.to raise_error(RefworksAdminBrowser::InvalidUser)
  end
end