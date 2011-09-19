require 'spec_helper'

describe "Refworks Connection Test", :connects_to_refworks => true do
=begin
  it "accesses the admin and downloads a parseable user list" do
    browser = RefworksAdminBrowser.new
    browser.cookie.should be_nil
    browser.log_in!
    browser.cookie.should =~ /SCode=RWUnivNotreDame&DB=RWUnivNotreDame.*&usid=[A-Z]+/
    
    raw_users = browser.get_user_list(3)
    parsed_users = RefworksCache.parse_raw_users(raw_users)
    parsed_users.should be_a_kind_of(Array)
    parsed_users.size.should >= 0
  end
=end
  
  it "resets the password for the refworkstest user" do
    admin_browser = RefworksAdminBrowser.new
    public_browser = RefworksPublicBrowser.new
    user = RefworksCache.find_by_login('refworkstest')
    if user.nil?
      puts "Fetching full user list from Refworks"
      raw_users = admin_browser.get_user_list(0)
      File.open(Rails.root.join("spec/test_files/refworks_full_user_list.html"), 'w') {|f| f.write(raw_users)}
      puts "Done fetching user list"
      parsed_users = RefworksCache.parse_raw_users(raw_users)
      user_data = parsed_users.select{|u| u[:login] == 'refworkstest'}
      user = RefworksCache.create!(user_data)
    end
    user.should be_a_kind_of(RefworksCache)
    
    admin_browser.reset_password_for(user)
    public_browser.login_as(user.login, 'newpassword')
    public_browser.logged_in?.should be_false
    
    public_browser.login_as(user.login, user.temporary_password)
    public_browser.logged_in?.should be_true
    
    public_browser.change_password_to('newpassword')
    new_public_browser = RefworksPublicBrowser.new
    new_public_browser.login_as(user.login, 'newpassword')
    public_browser.logged_in?.should be_true
  end
end
