require 'rails_helper'

describe RefworksUser do
  describe "USER_ROW_REGEX" do
    it "should match a valid row" do
      RefworksUser::USER_ROW_REGEX.should match(refworks_test_user_row)
    end

    it "should not match an invalid row" do
      RefworksUser::USER_ROW_REGEX.should_not match(refworks_bad_user_row)
    end
  end

  describe "#parse_raw_users" do
    it "should correctly map a user row" do
      mapped_data = RefworksUser.parse_raw_users(refworks_test_user_row)
      mapped_data.should be_kind_of(Array)
      mapped_row = mapped_data[0]
      mapped_row.should be_kind_of(Hash)
      refworks_test_user_attributes.each do |key,value|
        mapped_row[key].should == value
      end
    end
  end

  describe "#cache_users!" do
    it "should create a cache record for a new row" do
      RefworksUser.find_by_refworks_id(refworks_test_user_attributes[:refworks_id]).should be_nil
      RefworksUser.cache_users!(refworks_test_user_row)
      cache_record = RefworksUser.find_by_refworks_id(refworks_test_user_attributes[:refworks_id])
      cache_record.should be_kind_of(RefworksUser)
      cache_record.login.should == refworks_test_user_attributes[:login]
    end

    it "should update existing cache records" do
      correct_name = refworks_test_user_attributes[:name]
      user = RefworksUser.create!(refworks_test_user_attributes.merge(:name => "foo"))
      user.name.should == "foo"
      RefworksUser.cache_users!(refworks_test_user_row)
      user.reload
      user.name.should == correct_name
    end
  end

  describe "#save" do
    it "should not allow duplicate logins" do
      record1 = FactoryGirl.create(:refworks_user, :login => 'test')
      record2 = FactoryGirl.build(:refworks_user, :login => 'test')
      record2.errors_on(:login).should eql(["has already been taken"])
    end

    it "should not allow duplicate ids" do
      record1 = FactoryGirl.create(:refworks_user, :refworks_id => 1)
      record2 = FactoryGirl.build(:refworks_user, :refworks_id => 1)
      record2.errors_on(:refworks_id).should eql(["has already been taken"])
    end
  end

  describe "#lower_login_and_email" do
    it "should make the email lowercase" do
      attributes = {:email => 'TEST@ND.EDU'}
      record = FactoryGirl.create(:refworks_user, attributes)
      record.email.should_not == attributes[:email]
      record.email.should == attributes[:email].downcase
    end

    it "should make the login lowercase" do
      attributes = {:login => 'TEST'}
      record = FactoryGirl.create(:refworks_user, attributes)
      record.login.should_not == attributes[:login]
      record.login.should == attributes[:login].downcase
    end
  end
end
