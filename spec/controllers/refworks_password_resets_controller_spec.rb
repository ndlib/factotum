require 'spec_helper'

describe RefworksPasswordResetsController do
  render_views
  it "should render new" do
    get 'new'
    response.should be_success
  end
  
  it "should email and redirect on successful submission of an email" do
    user = FactoryGirl.create(:refworks_user)
    lambda {
      post 'create', :refworks_password_reset => {:email_or_login => user.email}
    }.should change(ActionMailer::Base.deliveries, :size).by(1)
    
    last_delivery = ActionMailer::Base.deliveries.last
    last_delivery.to.should include user.email
    reset = RefworksPasswordReset.find(:last)
    last_delivery.parts[0].to_s.should include reset_refworks_password_reset_path(reset.token)
    last_delivery.parts[1].to_s.should include reset_refworks_password_reset_path(reset.token)
    response.should be_redirect
  end
  
  it "should redirect on successful submission of an login" do
    user = FactoryGirl.create(:refworks_user)
    lambda {
      post 'create', :refworks_password_reset => {:email_or_login => user.login}
    }.should change(ActionMailer::Base.deliveries, :size).by(1)
    
    last_delivery = ActionMailer::Base.deliveries.last
    last_delivery.to.should include user.email
    reset = RefworksPasswordReset.find(:last)
    last_delivery.parts[0].to_s.should include reset_refworks_password_reset_path(reset.token)
    last_delivery.parts[1].to_s.should include reset_refworks_password_reset_path(reset.token)
    
    response.should be_redirect
  end
  
  it "should redirect the thank_you page to a new request if none has been submitted" do
    get 'thank_you'
    response.should be_redirect
  end
  
  it "should display the thank_you page after a successful submission" do
    user = FactoryGirl.create(:refworks_user)
    post 'create', :refworks_password_reset => {:email_or_login => user.email}
    response.should be_redirect
    
    reset = RefworksPasswordReset.find(:last)
    response.should redirect_to(thank_you_refworks_password_reset_path)
    get 'thank_you'
    response.should be_success
    assigns(:refworks_password_reset).should == reset
    response.should render_template('refworks_password_resets/thank_you')
  end
  
  it "should render if an invalid email or login is given" do
    user = FactoryGirl.build(:refworks_user)
    post 'create', :refworks_password_reset => {:email_or_login => "asdfasdf"}
    response.should be_success
  end
  
  it "should display a form to confirm resetting a password" do
    reset = FactoryGirl.create(:refworks_password_reset)
    get 'reset', :token => reset.token
    response.should be_success
    response.body.should include "This will reset the password for your RefWorks account with the login name: <strong>#{reset.users.first.login}</strong>"
  end
  
  it "should display a form with a select box when confirming resetting a password with multiple available accounts" do
    user = FactoryGirl.create(:refworks_user) 
    user2 = FactoryGirl.create(:refworks_user, :email => user.email)
    reset = FactoryGirl.create(:refworks_password_reset, :email_or_login => user.email)
    get 'reset', :token => reset.token
    response.should be_success
    response.body.should include "You have 2 accounts with RefWorks.  Please select the account that needs a password reset"
  end
  
  it "should display the expired view if the reset is expired" do
    reset = FactoryGirl.create(:refworks_password_reset)
    reset.update_attribute(:created_at, 2.days.ago)
    get 'reset', :token => reset.token
    response.should be_success
    response.should render_template("refworks_password_resets/expired")
  end
  
  it "should display the expired view if the reset does not have any users" do
    reset = FactoryGirl.create(:refworks_password_reset)
    reset.users.destroy_all
    get 'reset', :token => reset.token
    response.should be_success
    response.should render_template("refworks_password_resets/expired")
  end
  
  describe "when connecting to RefWorks", :connects_to_refworks => true do
    it "should allow a user to reset their password" do
      user = FactoryGirl.create(:refworks_test_user)
      reset = FactoryGirl.create(:refworks_password_reset, :email_or_login => user.email)
      post 'confirm_reset', :token => reset.token, :refworks_id => user.refworks_id
      response.should be_success
      reset.reload
      reset.used.should be_true
      reset.user.should == user
      response.body.should match(/The password for your RefWorks account with the login name of <strong>#{Regexp.escape(reset.user.login)}<\/strong> has been reset to: [A-Z0-9]+/)
    end
  end
end
