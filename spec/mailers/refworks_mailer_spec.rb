require "spec_helper"

describe RefworksMailer do
  describe "#password_reset" do
    before :each do
      @user = FactoryBot.create(:refworks_user)
      @reset = FactoryBot.create(:refworks_password_reset, :email_or_login => @user.email)
      @email = RefworksMailer.password_reset(@reset)
    end

    it "should have the reset url" do
      expect(@email).to have_body_text(reset_refworks_password_reset_path(@reset.token))
    end

    it "should be sent to the user" do
      expect(@email).to deliver_to(@user.email)
    end

    it "should have the user's login name in the body" do
      expect(@email).to have_body_text(/Login: #{@user.login}$/)
    end

    it "should have the correct subject" do
      expect(@email).to have_subject("Instructions for resetting your RefWorks Password")
    end

    it "should have the erhelp listserve in the body" do
      expect(@email).to have_body_text("er-acq-list@nd.edu")
    end
  end

  describe "#password_reset for multiple users" do
    it "should list each of the user's logins" do
      user1 = FactoryBot.create(:refworks_user)
      user2 = FactoryBot.create(:refworks_user, :email => user1.email)
      reset = FactoryBot.create(:refworks_password_reset, :email_or_login => user1.email)
      email = RefworksMailer.password_reset(reset)
      [user1, user2].each do |user|
        expect(email).to have_body_text(/Login: #{user.login}$/)
      end
    end
  end
end
