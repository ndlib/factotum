module LdapRequestHelper

  @@lc = nil

  def ldap_get(attr,value)
    lc = ldap_connection(@@lc)
    lc.ldap_search(attr, value)
  end

  def ldap_connection(lc = LdapConnection.new)
    if lc.is_a?(LdapRequestHelper::LdapConnection)
      @@lc = lc
    else
      @@lc = LdapConnection.new
    end
  end

  private

  class LdapConnection

    def initialize
      build_ldap
    end

    def build_ldap args = {}
      [:host, :port, :encryption, :username, :password].each {|p| set_value(p, args) }
      @ldap_object = Net::LDAP.new(
        :host => @ldap_host,
        :port => @ldap_port,
        :encryption => @ldap_encryption
      )
      raise Net::LDAP::Error, @ldap_object.get_operation_result if ldap_bind == false
      @ldap_object
    end

    def ldap_bind
      @ldap_object.bind(
        :method   => :simple,
        :username => @ldap_username,
        :password => @ldap_password
      )
    end

    def ldap_search(attr, value)
      results = []
      filter = Net::LDAP::Filter.eq(attr,value)
      result = @ldap_object.search(
        :base           => Rails.configuration.ldap_base,
        :filter         => filter,
        :return_result  => true
      ) do |entry|
        results.push(entry)
      end
      unless (results.nil?)
        if (results.size >= 1)
          if (attr == 'sn')
            results
          else
            results.first
          end
        end
      else
        return nil
      end
    end

    def set_value(type, args)
      case type
      when :host
        @ldap_host = args[:ldap_host] || Rails.configuration.ldap_host
        raise Net::LDAP::Error, "Missing host parameter" if @ldap_host.blank?
      when :port
        @ldap_port = args[:ldap_port] || Rails.configuration.ldap_port
        raise Net::LDAP::Error, "Missing port parameter" if @ldap_port.blank?
      when :encryption
        @ldap_encryption = args[:ldap_encryption] || :simple_tls
        raise Net::LDAP::Error, "Missing encryption parameter" if @ldap_encryption.blank?
      when :username
        @ldap_username = args[:ldap_username] || Rails.configuration.ldap_service_dn
        raise Net::LDAP::Error, "Missing username parameter" if @ldap_username.blank?
      when :password
        @ldap_password = args[:ldap_password] || Rails.configuration.ldap_service_password
        raise Net::LDAP::Error, "Missing password parameter" if @ldap_password.blank?
      end
    end
  end

end
