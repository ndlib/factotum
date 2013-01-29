require 'spec_helper'

describe User do
  before do
    User.any_instance.unstub(:store_ldap_attributes)
  end

  describe "ldap", :connects_to_ldap => true do
    it "should store attributes from ldap" do
      u = User.new(:username => 'jkennel')
      u.save
      u.display_name.should == "Jaron Kennel"
      u.email.should == "jkennel@nd.edu"
      u.first_name.should == "Jaron"
      u.last_name.should == "Kennel"
    end
    
    it "should not fail to save a user if no ldap record could be found" do
      u = User.new(:username => 'foo')
      u.save
      u.display_name.should be_nil
      u.email.should be_nil
      u.first_name.should be_nil
      u.last_name.should be_nil
    end
  end
end
