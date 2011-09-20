class RefworksUser < ActiveRecord::Base
  # These segments are combined and run against an html table row. Each segment should have one capturing group, which is used to retrieve the data
  USER_ROW_SEGMENTS = [
    [:refworks_id, "showUserInfo\\(([0-9]+)\\)\">"],
    [:number_of_logins, "([0-9]+)"],
    [:login, "[^&]+&nbsp;([^<]+)"],
    [:name, "[^&]+&nbsp;([^<]+)"],
    [:email, ".*mailto:([^\"]+)"],
    [:last_login_date, ".*<\\/TD.*&nbsp;(.*)<\\/TD"],
    [:refworks_creation_date, ".*&nbsp;(.*)<\\/TD"],
    [:last_ref_id, ".*&nbsp;(.*)<\\/TD"],
    [:browser_info, ".*&nbsp;(.*)<\\/TD"]
  ]
  USER_ROW_REGEX = /#{USER_ROW_SEGMENTS.collect{|field_name,expression| expression}.join("")}/
  validates_presence_of :refworks_id, :login, :email, :name
  validates_uniqueness_of :login, :refworks_id
  before_validation :lowercase_login_and_email
  
  def self.cache_users!(data = nil)
    if data.nil?
      browser = RefworksAdminBrowser.new
      data = browser.get_user_list(7)
    end
    user_data = self.parse_raw_users(data)
    user_data.each do |row|
      existing_record = self.find_by_refworks_id(row[:refworks_id])
      if existing_record.nil?
        self.create!(row)
      else
        existing_record.update_attributes!(row)
      end
    end
    user_data.count
  end
  
  def self.parse_raw_users(data)
    data.scan(USER_ROW_REGEX).to_a.collect do |user|
      mapped_hash = {}
      USER_ROW_SEGMENTS.each_with_index do |values, index|
        field_name, expression = values
        mapped_hash[field_name] = user[index]
      end
      mapped_hash
    end
  end
  
  private
    def lowercase_login_and_email
      self.login = self.login.to_s.downcase
      self.email = self.email.to_s.downcase
    end
end
