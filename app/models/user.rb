class User < ActiveRecord::Base
  TREEBASE = 'o="University of Notre Dame", st=Indiana, c=US'
  devise :cas_authenticatable, :trackable
  
  before_save :store_ldap_attributes, :on => :create
  
  def to_s
    name.to_s
  end
  
  def name
    if self.display_name.present?
      self.display_name
    elsif self.first_name.present?
      "#{self.first_name} #{self.last_name}".strip
    elsif self.email.present?
      self.email
    else
      self.username
    end
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
    @ldap ||= self.class.ldap_connection.search(:base => TREEBASE, :filter => Net::LDAP::Filter.eq("uid", self.username)).first
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
end
