require 'rails_helper'

describe RefworksAdminBrowser do
  describe "#parse_password" do
    it "should find a password in html" do
      expect(RefworksAdminBrowser.new.parse_password("The password has been reset to:&nbsp; <b>NS56US91</b>")).to eq("NS56US91")
    end

    it "should raise if it cannot find a password" do
      expect {RefworksAdminBrowser.new.parse_password("The password has been reset to:&nbsp; no password here") }.to raise_error(RefworksAdminBrowser::PasswordNotFound)
    end
  end
end

describe "Refworks Constants" do
  it "should have REFWORKS_ADMIN_USERNAME defined" do
    expect(defined?(Rails.application.secrets.refworks["ADMIN_USERNAME"])).to be_truthy, "ADMIN_USERNAME should be defined in secrets.yml"
  end

  it "should have REFWORKS_ADMIN_PASSWORD defined" do
    expect(defined?(Rails.application.secrets.refworks["ADMIN_PASSWORD"])).to be_truthy, "ADMIN_PASSWORD should be defined in secrets.yml"
  end
end

describe "Refworks Connection Test", :connects_to_refworks => true do

  it "should not log in with an incorrect password" do
    browser = RefworksAdminBrowser.new
    expect(browser.logged_in?).to be_falsey
    expect {browser.log_in!(nil, 'foo')}.to raise_error(RefworksAdminBrowser::InvalidLogin)
    expect(browser.logged_in?).to be_falsey
  end

  it "accesses the admin and downloads a parseable user list" do
    browser = RefworksAdminBrowser.new
    expect(browser.logged_in?).to be_falsey
    browser.log_in!
    expect(browser.logged_in?).to be_truthy

    raw_users = browser.get_user_list(3)
    parsed_users = RefworksUser.parse_raw_users(raw_users)
    expect(parsed_users).to be_a_kind_of(Array)
    expect(parsed_users.size).to be >= 0
  end

  it "resets the password for the refworkstest user" do
    admin_browser = RefworksAdminBrowser.new

    test_login = refworks_test_user_attributes[:login]

    user = RefworksUser.find_by_login(test_login)
    if user.nil?
      raw_users = admin_browser.get_user_list(7)
      RefworksUser.cache_users!(raw_users)

      user = RefworksUser.find_by_login(test_login)
    end
    expect(user).to be_a_kind_of(RefworksUser)

    password = admin_browser.reset_password_for!(user)
    expect(password).to match(/[A-Z0-9]+/)
  end

  it "should raise if user details do not match refworks" do
    browser = RefworksAdminBrowser.new
    user = RefworksUser.create!(refworks_test_user_attributes.merge(:login => 'foobar'))
    expect { browser.reset_password_for!(user) }.to raise_error(RefworksAdminBrowser::InvalidUser)
    user.destroy
    user = RefworksUser.create!(refworks_test_user_attributes.merge(:email => 'foo@bar.com'))
    expect { browser.reset_password_for!(user) }.to raise_error(RefworksAdminBrowser::InvalidUser)
  end
end