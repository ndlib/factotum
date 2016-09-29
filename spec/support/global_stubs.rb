module GlobalStubs
  def add_global_stubs
    add_user_ldap_stub
    add_asset_ssi_stub
  end

  def add_user_ldap_stub
    allow_any_instance_of(User).to receive(:store_ldap_attributes).and_return(true)
  end

  def remove_user_ldap_stub
    allow_any_instance_of(User).to receive(:store_ldap_attributes).and_call_original
  end

  def add_asset_ssi_stub
    AssetsHelper.class_eval do
      unless method_defined? :read_ssi_file_original
        alias_method :read_ssi_file_original, :read_ssi_file
        def read_ssi_file(*args)
          ""
        end
      end
    end
  end

  def remove_asset_ssi_stub
    AssetsHelper.class_eval do
      if method_defined? :read_ssi_file_original
        alias_method :read_ssi_file, :read_ssi_file_original
        remove_method :read_ssi_file_original
      end
    end
  end
end
