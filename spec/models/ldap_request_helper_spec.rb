require 'rails_helper'

class TestLdapRequestHelper
  include LdapRequestHelper
end

describe 'ldap_request_helper' do
  let(:test_ldap_helper) { TestLdapRequestHelper.new }
  let(:test_ldap_conn) { LdapRequestHelper::LdapConnection.new }
  let(:ldap_entry) { FactoryBot.build(:ldap_entry) }

  context "provides a valid ldap interface" do

    it "makes successful connection to LDAP" do
      allow(test_ldap_conn).to receive(:ldap_bind).and_return(true)
      expect(test_ldap_conn).to receive(:ldap_bind).once
      ldap_object = test_ldap_conn.build_ldap
      expect(ldap_object).to be_an_instance_of(Net::LDAP)
    end
    it "returns an error if bind operation fails" do
      allow(test_ldap_conn).to receive(:ldap_bind).and_return(false)
      expect { test_ldap_conn.build_ldap }.to raise_error(Net::LDAP::Error)
    end
    it "returns an error if missing parameters" do
      allow(test_ldap_conn).to receive(:ldap_bind).and_return(true)
      expect { test_ldap_conn.build_ldap(:ldap_host => '') }.to raise_error(Net::LDAP::Error)
    end

  end

  context "requests entries from LDAP based on criteria" do
    it "can return a valid ldap entry" do
      allow(test_ldap_conn).to receive(:ldap_bind).and_return(true)
      allow(test_ldap_conn).to receive(:ldap_search).and_return(ldap_entry)
      expect(test_ldap_conn).to receive(:ldap_search).once
      test_ldap_conn.build_ldap
      test_ldap_helper.ldap_connection(test_ldap_conn)
      expect(test_ldap_helper.ldap_get('fake_attr','fake_val')).to eql(ldap_entry)
    end
    it "can parse out LDAP attributes" do
      allow(test_ldap_conn).to receive(:ldap_bind).and_return(true)
      allow(test_ldap_conn).to receive(:ldap_search).and_return(ldap_entry)
      expect(test_ldap_conn).to receive(:ldap_search).once
      test_ldap_conn.build_ldap
      test_ldap_helper.ldap_connection(test_ldap_conn)
      expect(test_ldap_helper.ldap_get('fake_attr','fake_val').ndtitle).to eq(ldap_entry.ndtitle)
    end
    it "returns nil if no results found" do
      allow(test_ldap_conn).to receive(:ldap_bind).and_return(true)
      allow(test_ldap_conn).to receive(:ldap_search).and_return(nil)
      test_ldap_conn.build_ldap
      test_ldap_helper.ldap_connection(test_ldap_conn)
      expect(test_ldap_helper.ldap_get('fake_attr','fake_val')).to be_nil
    end

  end

end
