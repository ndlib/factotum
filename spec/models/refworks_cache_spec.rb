require 'spec_helper'

describe RefworksCache do
  describe "USER_ROW_REGEX" do
    it "should match a valid row" do
      RefworksCache::USER_ROW_REGEX.should match(refworks_test_user_row)
    end
    
    it "should not match an invalid row" do
      RefworksCache::USER_ROW_REGEX.should_not match(refworks_bad_user_row)
    end
  end
  
  describe "#parse_raw_users" do
    it "should correctly map a user row" do
      mapped_data = RefworksCache.parse_raw_users(refworks_test_user_row)
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
      RefworksCache.find_by_refworks_id(refworks_test_user_attributes[:refworks_id]).should be_nil
      RefworksCache.cache_users!(refworks_test_user_row)
      cache_record = RefworksCache.find_by_refworks_id(refworks_test_user_attributes[:refworks_id])
      cache_record.should be_kind_of(RefworksCache)
      cache_record.login.should == refworks_test_user_attributes[:login]
    end
    
    it "should update existing cache records" do
      RefworksCache.create!(refworks_test_user_attributes)
      RefworksCache.count.should == 1
      RefworksCache.cache_users!(refworks_test_user_row)
      RefworksCache.count.should == 1
    end
  end
end
