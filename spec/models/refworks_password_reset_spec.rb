require 'rails_helper'

describe RefworksPasswordReset do
  it "should create a token" do
    record = FactoryGirl.create(:refworks_password_reset)
    expect(record.token).to be_kind_of(String)
    expect(record.token).to match(/.+/)
  end

  it "should error if there are no matching users" do
    record = RefworksPasswordReset.new(:email_or_login => 'fakeemail@test.com')
    expect(record.valid?).to be_falsey
    expect(record.errors[:email_or_login].size).to eq(1)
  end

  it "should not be available after 24 hours" do
    record = FactoryGirl.create(:refworks_password_reset)
    expect(RefworksPasswordReset.available.count).to eq(1)
    record.update_attribute(:created_at, 26.hours.ago)
    expect(RefworksPasswordReset.available.count).to eq(0)
  end

  it "should not be available after being used" do
    record = FactoryGirl.create(:refworks_password_reset)
    expect(RefworksPasswordReset.available.count).to eq(1)
    record.update_attribute(:used, true)
    expect(RefworksPasswordReset.available.count).to eq(0)
  end

  it "should be findable by token" do
    record = FactoryGirl.create(:refworks_password_reset)
    expect(RefworksPasswordReset.available.by_token(record.token).first).to eq(record)
  end


  it "should find users by email" do
    user = FactoryGirl.create(:refworks_user)
    record = FactoryGirl.create(:refworks_password_reset, :email_or_login => user.email)
    expect(record.users).to include(user)
  end

  it "should find users by login" do
    user = FactoryGirl.create(:refworks_user)
    record = FactoryGirl.build(:refworks_password_reset, :email_or_login => user.login)
    expect(record.users).to include(user)
  end

  it "should retrieve list of available refworks users" do
    record = FactoryGirl.create(:refworks_password_reset)
    users = record.users
    expect(users.count).to eq(1)
    expect(users.first).to be_kind_of(RefworksUser)
  end
end
