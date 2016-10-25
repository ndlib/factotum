class Directory::LdapEmployee
  TREEBASE = 'o="University of Notre Dame", st=Indiana, c=US'

  attr_accessor :netid, :display_name, :first_name, :last_name, :email, :phone, :title, :affiliation, :ndofficeaddress, :department



  def initialize(netid)

    @netid = netid
    load_ldap_attributes

  end


  def load_ldap_attributes
    if ldap.present?
      self.display_name = ldap.displayName.first if ldap.respond_to?(:displayName)
      self.first_name = ldap.givenName.first if ldap.respond_to?(:givenName)
      self.last_name = ldap.sn.first if ldap.respond_to?(:sn)
      self.email = ldap.mail.first if ldap.respond_to?(:mail)
      if ldap.respond_to?(:telephonenumber)
        self.phone = ldap.telephonenumber.first
      elsif ldap.respond_to?(:homephone)
        self.homephone = ldap.homephone.first
      end
      self.title = ldap.ndtitle.first if ldap.respond_to?(:ndtitle)
      self.affiliation = ldap.ndaffiliation.first if ldap.respond_to?(:ndaffiliation)
      self.ndofficeaddress = ldap.ndofficeaddress.first if ldap.respond_to?(:ndofficeaddress)
      self.department = ldap.nddepartment.first if ldap.respond_to?(:nddepartment)
    end
    true
  end


  def ldap
    @ldap ||= self.class.search_ldap("uid" => @netid).first
  rescue Exception => exception
    if Rails.env == "development"
      puts "Error encountered while connection to LDAP. #{exception.class}: #{exception.message}"
    else
      ExceptionNotifier::Notifier.background_exception_notification(exception)
    end
    nil
  end

  def self.ldap_connection
    connection = Net::LDAP.new(
      :host => "directory.nd.edu",
      :port => 636,
      :encryption => :simple_tls
    )
    connection.bind(
      :method => :simple,
      :username => Rails.application.secrets.ldap["service_dn"],
      :password => Rails.application.secrets.ldap["service_password"]
    )
    connection
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
