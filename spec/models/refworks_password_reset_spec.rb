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
  
  it "should not be available after 24 hours" do
    record = FactoryGirl.create(:refworks_password_reset)
    RefworksPasswordReset.available.count.should == 1
    record.update_attribute(:created_at, 26.hours.ago(Time.now))
    RefworksPasswordReset.available.count.should == 0
  end
  
  it "should not be available after being used" do
    record = FactoryGirl.create(:refworks_password_reset)
    RefworksPasswordReset.available.count.should == 1
    record.update_attribute(:used, true)
    RefworksPasswordReset.available.count.should == 0
  end
  
  it "should be findable by token" do
    record = FactoryGirl.create(:refworks_password_reset)
    RefworksPasswordReset.available.by_token(record.token).first.should == record
  end
  
  
  it "should find users by email" do
    user = FactoryGirl.create(:refworks_user)
    record = FactoryGirl.create(:refworks_password_reset, :email_or_login => user.email)
    record.users.should include(user)
  end
  
  it "should find users by login" do
    user = FactoryGirl.create(:refworks_user)
    record = FactoryGirl.build(:refworks_password_reset, :email_or_login => user.login)
    record.users.should include(user)
  end
  
  it "should retrieve list of available refworks users" do
    record = FactoryGirl.create(:refworks_password_reset)
    users = record.users
    users.count.should == 1
    users.first.should be_kind_of(RefworksUser)
  end
end
