require 'rails_helper'

describe RefworksUser do
  describe "USER_ROW_REGEX" do
    it "should match a valid row" do
      expect(RefworksUser::USER_ROW_REGEX).to match(refworks_test_user_row)
    end

    it "should not match an invalid row" do
      expect(RefworksUser::USER_ROW_REGEX).not_to match(refworks_bad_user_row)
    end
  end

  describe "#parse_raw_users" do
    it "should correctly map a user row" do
      mapped_data = RefworksUser.parse_raw_users(refworks_test_user_row)
      expect(mapped_data).to be_kind_of(Array)
      mapped_row = mapped_data[0]
      expect(mapped_row).to be_kind_of(Hash)
      refworks_test_user_attributes.each do |key,value|
        expect(mapped_row[key]).to eq(value)
      end
    end
  end

  describe "#cache_users!" do
    it "should create a cache record for a new row" do
      expect(RefworksUser.find_by_refworks_id(refworks_test_user_attributes[:refworks_id])).to be_nil
      RefworksUser.cache_users!(refworks_test_user_row)
      cache_record = RefworksUser.find_by_refworks_id(refworks_test_user_attributes[:refworks_id])
      expect(cache_record).to be_kind_of(RefworksUser)
      expect(cache_record.login).to eq(refworks_test_user_attributes[:login])
    end

    it "should update existing cache records" do
      correct_name = refworks_test_user_attributes[:name]
      user = RefworksUser.create!(refworks_test_user_attributes.merge(:name => "foo"))
      expect(user.name).to eq("foo")
      RefworksUser.cache_users!(refworks_test_user_row)
      user.reload
      expect(user.name).to eq(correct_name)
    end
  end

  describe "#save" do
    it "should not allow duplicate logins" do
      record1 = FactoryBot.create(:refworks_user, :login => 'test')
      record2 = FactoryBot.build(:refworks_user, :login => 'test')
      record2.valid?
      expect(record2.errors[:login]).to eql(["has already been taken"])
    end

    it "should not allow duplicate ids" do
      record1 = FactoryBot.create(:refworks_user, :refworks_id => 1)
      record2 = FactoryBot.build(:refworks_user, :refworks_id => 1)
      record2.valid?
      expect(record2.errors[:refworks_id]).to eql(["has already been taken"])
    end
  end

  describe "#lower_login_and_email" do
    it "should make the email lowercase" do
      attributes = {:email => 'TEST@ND.EDU'}
      record = FactoryBot.create(:refworks_user, attributes)
      expect(record.email).not_to eq(attributes[:email])
      expect(record.email).to eq(attributes[:email].downcase)
    end

    it "should make the login lowercase" do
      attributes = {:login => 'TEST'}
      record = FactoryBot.create(:refworks_user, attributes)
      expect(record.login).not_to eq(attributes[:login])
      expect(record.login).to eq(attributes[:login].downcase)
    end
  end
end
