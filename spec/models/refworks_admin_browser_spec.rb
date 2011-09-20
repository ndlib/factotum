require 'spec_helper'

describe RefworksAdminBrowser do
  describe "#parse_password" do
    it "should find a password in html" do
      RefworksAdminBrowser.new.parse_password("The password has been reset to:&nbsp; <b>NS56US91</b>").should == "NS56US91"
    end
    
    it "should raise if it cannot find a password" do
      expect {RefworksAdminBrowser.new.parse_password("The password has been reset to:&nbsp; no password here") }.to raise_error(RefworksAdminBrowser::PasswordNotFound)
    end
  end
end
