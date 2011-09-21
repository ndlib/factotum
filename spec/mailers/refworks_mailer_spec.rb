require "spec_helper"

describe RefworksMailer do
  describe "#password_reset" do
    before :each do
      @user = FactoryGirl.create(:refworks_user)
      @reset = FactoryGirl.create(:refworks_password_reset, :email_or_login => @user.email)
      @email = RefworksMailer.password_reset(@reset)
    end
  
    it "should have the reset url" do
      @email.should have_body_text(reset_refworks_password_reset_path(@reset.token))
    end
    
    it "should be sent to the user" do
      @email.should deliver_to(@user.email)
    end
    
    it "should have the user's login name in the body" do
      @email.should have_body_text(/Login: #{@user.login}$/)
    end
    
    it "should have the correct subject" do
      @email.should have_subject("Instructions for resetting your RefWorks Password")
    end
    
    it "should have the erhelp listserve in the body" do
      @email.should have_body_text("erhelp@listserv.nd.edu")
    end
  end
  
  describe "#password_reset for multiple users" do
    it "should list each of the user's logins" do
      user1 = FactoryGirl.create(:refworks_user)
      user2 = FactoryGirl.create(:refworks_user, :email => user1.email)
      reset = FactoryGirl.create(:refworks_password_reset, :email_or_login => user1.email)
      email = RefworksMailer.password_reset(reset)
      [user1, user2].each do |user|
        email.should have_body_text(/Login: #{user.login}$/)
      end
    end
  end
end
