class RefworksCache < ActiveRecord::Base
  USER_LIST_REGEX = /<TR CLASS="SF">.*showUserInfo\(([0-9]+)[^&]+&nbsp;+([^<]+)[^&]+&nbsp;([^<]+).*mailto:([^"]+)/
  
  def self.download_users
    browser = RefworksBrowser.new
    data = browser.get_user_list
    p data.scan(USER_LIST_REGEX).to_a
  end
end
