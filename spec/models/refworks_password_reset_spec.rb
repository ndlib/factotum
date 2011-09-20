require 'spec_helper'

describe RefworksPasswordReset do
  it "should create a token" do
    record = FactoryGirl.create(:refworks_password_reset)
    record.token.should be_kind_of(String)
    record.token.should match(/.+/)
  end
  
  it "should error if there are no matching users" do
    record = RefworksPasswordReset.new(:email_or_login => 'fakeemail@test.com')
    record.valid?.should be_false
    record.errors_on(:email_or_login).count.should == 1
  end
  
  it "should autodetermine that a submitted email is an email" do
    user = FactoryGirl.create(:refworks_user)
    record = FactoryGirl.build(:refworks_password_reset, :email_or_login => user.email)
    record.email.should be_nil
    record.login.should be_nil
    record.save!
    record.email.should == record.email_or_login
    record.login.should be_nil
  end
  
  it "should autodetermine that a submitted login is a login" do
    user = FactoryGirl.create(:refworks_user)
    record = FactoryGirl.build(:refworks_password_reset, :email_or_login => user.login)
    record.email.should be_nil
    record.login.should be_nil
    record.save!
    record.login.should == record.email_or_login
    record.email.should be_nil
  end
  
  it "should retrieve list of available refworks users" do
    record = FactoryGirl.create(:refworks_password_reset)
    users = record.users
    users.count.should == 1
    users.first.should be_kind_of(RefworksUser)
  end
end
