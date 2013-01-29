module GlobalStubs
  def add_global_stubs
    User.any_instance.stub(:store_ldap_attributes).and_return(true)
  end
end