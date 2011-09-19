class RefworksCache < ActiveRecord::Base
  USER_LIST_REGEX = /<TR CLASS="SF">.*showUserInfo\(([0-9]+)[^&]+&nbsp;+([^<]+)[^&]+&nbsp;([^<]+).*mailto:([^"]+)/
  validates_presence_of :refworks_id, :login, :email, :name
  
  def self.download_users
    browser = RefworksAdminBrowser.new
    data = browser.get_user_list
    p data.scan(USER_LIST_REGEX).to_a
  end
  
  def self.parse_raw_users(data)
    data.scan(USER_LIST_REGEX).to_a.collect do |user|
      {:refworks_id => user[1], :login => user[2], :name => user[3], :email => user[4]}
    end
  end
end
