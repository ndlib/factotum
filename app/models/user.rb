class User < ActiveRecord::Base
  TREEBASE = 'o="University of Notre Dame", st=Indiana, c=US'
  devise :cas_authenticatable, :trackable
  
  has_one :selector, :foreign_key => "netid", :primary_key => "username"
  
  before_save :store_ldap_attributes, :on => :save

  validates_uniqueness_of :username
  
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
    if self.display_name.present?
      split = self.display_name.split(" ")
    else
      split = self.name.split(" ")
    end
    if split.length == 1
      split.join(" ")
    else
      last = split.pop
      "#{last}, #{split.join(" ")}"
    end
  end
  
  def netid
    self.username
  end

  def selector?
    selector.present?
  end

  def monographic_selector?
    selector? && selector.monographic?
  end

  def selector_admin?
    selector? && selector.admin?
  end

  def monographic_orders
    orders = MonographicOrder.order('created_at DESC')
    if !selector_admin?
      if monographic_selector?
        orders = orders.selector_is(self.selector)
      else
        orders = orders.creator_is(self)
      end
    end
    orders
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
      puts "Error encountered while connection to LDAP. #{exception.class}: #{exception.message}"
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
  
  def self.guess_by_name(name)
    if name.to_s.split(", ").size == 2
      last_name, first_name = name.to_s.split(", ")
    elsif name.to_s.split(" ").size == 2
      first_name, last_name = name.to_s.split(" ")
    else
      first_name = name[0,1]
      last_name = name[1,8]
    end
    base_netid = "#{first_name[0,1]+last_name[0,7]}".downcase
    rough_netid = base_netid[0,7] + "%"
    results = self.where(:username => base_netid)
    if results.count == 0
      results = self.where(["username LIKE ?",rough_netid])
    end
    if results.count > 1
      raise ActiveRecord::RecordNotFound, "Found multiple users matching #{rough_netid}: #{results.collect{|u| u.username}.join(", ")}"
    elsif results.count == 0
      raise ActiveRecord::RecordNotFound, "Could not find any users matching #{rough_netid}"
    else
      results.first
    end
  end
end
