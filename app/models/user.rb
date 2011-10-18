class User < ActiveRecord::Base
  TREEBASE = 'o="University of Notre Dame", st=Indiana, c=US'
  devise :cas_authenticatable, :trackable
  
  has_one :selector, :foreign_key => "netid", :primary_key => "username"
  
  before_save :store_ldap_attributes, :on => :create
  
  def to_s
    name.to_s
  end
  
  def name
    if self.display_name.present?
      self.display_name
    elsif self.first_name.present?
      "#{self.first_name} #{self.last_name}"
    elsif self.email.present?
      self.email
    else
      self.username
    end
  end
  
  def last_first
    split = self.display_name.split(" ")
    last = split.pop
    "#{last}, #{split.join(" ")}"
  end
  
  def netid
    self.username
  end
  
  def cas_extra_attributes=(extra_attributes)
    #logger.debug "Received extra attributes: #{extra_attributes.inspect}"
  end
  
  def store_ldap_attributes
    if ldap.present?
      self.display_name = ldap.displayName.first
      self.first_name = ldap.givenName.first
      self.last_name = ldap.sn.first
      self.email = ldap.mail.first
    end
    true
  end
  
  def ldap
    @ldap ||= self.class.search_ldap("uid" => self.username).first
  rescue Exception => exception
    if Rails.env == "development"
      raise exception
    else
      ExceptionNotifier::Notifier.background_exception_notification(exception)
    end
    nil
  end
  
  def self.ldap_connection
    connection = Net::LDAP.new :host => "directory.nd.edu",
      :port => 389
  end
  
  def self.search_ldap(params)
    ldap_filter = nil
    params.each do |key,value|
      new_filter = Net::LDAP::Filter.eq(key, value)
      if ldap_filter
        ldap_filter = ldap_filter & new_filter
      else
        ldap_filter = new_filter
      end
    end
    self.ldap_connection.search(:base => TREEBASE, :filter => ldap_filter)
  end
end
