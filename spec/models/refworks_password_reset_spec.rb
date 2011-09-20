require 'spec_helper'

describe RefworksPasswordReset do
  it "should create a token" do
    record = FactoryGirl.create(:refworks_password_reset)
    record.token.should be_kind_of(String)
    record.token.should match(/.+/)
  end
  
  it "should retrieve list of available refworks users" do
    record = FactoryGirl.create(:refworks_password_reset)
    users = record.users
    users.count.should == 1
    users.first.should be_kind_of(RefworksUser)
  end
end
