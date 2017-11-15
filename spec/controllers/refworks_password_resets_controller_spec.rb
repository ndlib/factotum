require 'rails_helper'

describe RefworksPasswordResetsController do
  render_views
  it "should render new" do
    get 'new'
    expect(response).to be_success
  end

  it "should redirect to directory when host is directory based" do
    request.env["HTTP_HOST"] = "directory.library.nd.edu"
    get 'new'
    expect(response).to redirect_to("/directory")
  end

  it "should email and redirect on successful submission of an email" do
    user = FactoryGirl.create(:refworks_user)
    expect {
      post 'create', :refworks_password_reset => {:email_or_login => user.email}
    }.to change(ActionMailer::Base.deliveries, :size).by(1)

    expect(response).to be_redirect
  end

  it "should redirect on successful submission of a login" do
    user = FactoryGirl.create(:refworks_user)
    expect {
      post 'create', :refworks_password_reset => {:email_or_login => user.login}
    }.to change(ActionMailer::Base.deliveries, :size).by(1)

    expect(response).to be_redirect
  end

  it "should redirect the thank_you page to a new request if none has been submitted" do
    get 'thank_you'
    expect(response).to be_redirect
  end

  it "should display the thank_you page after a successful submission" do
    user = FactoryGirl.create(:refworks_user)
    post 'create', :refworks_password_reset => {:email_or_login => user.email}
    expect(response).to be_redirect

    reset = RefworksPasswordReset.last
    expect(response).to redirect_to(thank_you_refworks_password_reset_path)
    get 'thank_you'
    expect(response).to be_success
    expect(assigns(:refworks_password_reset)).to eq(reset)
    expect(response).to render_template('refworks_password_resets/thank_you')
  end

  it "should display a form with a select box when confirming resetting a password with multiple available accounts" do
    user = FactoryGirl.create(:refworks_user)
    user2 = FactoryGirl.create(:refworks_user, :email => user.email)
    reset = FactoryGirl.create(:refworks_password_reset, :email_or_login => user.email)
    get 'reset', :token => reset.token
    expect(response).to be_success
    expect(response.body).to include "You have 2 accounts with RefWorks.  Please select the account that needs a password reset"
  end

  it "should display the expired view if the reset is expired" do
    reset = FactoryGirl.create(:refworks_password_reset)
    reset.update_attribute(:created_at, 2.days.ago)
    get 'reset', :token => reset.token
    expect(response).to be_success
    expect(response).to render_template("refworks_password_resets/expired")
  end

  it "should display the expired view if the reset does not have any users" do
    reset = FactoryGirl.create(:refworks_password_reset)
    reset.users.destroy_all
    get 'reset', :token => reset.token
    expect(response).to be_success
    expect(response).to render_template("refworks_password_resets/expired")
  end

  it "should redirect back to the selection page if there are multiple accounts and no account is selected" do
    user = FactoryGirl.create(:refworks_user)
    user2 = FactoryGirl.create(:refworks_user, :email => user.email)
    reset = FactoryGirl.create(:refworks_password_reset, :email_or_login => user.email)
    post 'confirm_reset', :token => reset.token
    expect(response).to be_redirect
    expect(response).to redirect_to(reset_refworks_password_reset_path(reset.token))
  end

  describe "when connecting to RefWorks", :connects_to_refworks => true do
    it "should automatically retrieve a user account from RefWorks in case it is new" do
      user = FactoryGirl.build(:refworks_test_user)
      post 'create', :refworks_password_reset => {:email_or_login => user.login}
      expect(response).to be_redirect
      expect(response).to redirect_to(thank_you_refworks_password_reset_path)
    end

    it "should render if an invalid email or login is given" do
      user = FactoryGirl.build(:refworks_user)
      post 'create', :refworks_password_reset => {:email_or_login => "thisisafakeusernamethatshouldnoteverwork"}
      expect(response).to be_success
      expect(response.body).to match(/The information you entered did not match any Refworks accounts/)
    end

    it "should automatically reset a user's password if they only have one account" do
      user = FactoryGirl.create(:refworks_test_user)
      reset = FactoryGirl.create(:refworks_password_reset, :email_or_login => user.email)
      get 'reset', :token => reset.token
      expect(response).to be_success
      reset.reload
      expect(reset.user).to be_kind_of RefworksUser
      new_password = assigns(:new_password)
      expect(new_password).to match(/[A-Z0-9]+/)
      expect(response.body).to match(/#{Regexp.escape(reset.user.login)}/)
      expect(response.body).to match(/#{Regexp.escape(new_password)}/)
    end

    it "should allow a user to reset their password" do
      user = FactoryGirl.create(:refworks_test_user)
      reset = FactoryGirl.create(:refworks_password_reset, :email_or_login => user.email)
      post 'confirm_reset', :token => reset.token
      expect(response).to be_success
      reset.reload
      expect(reset.used).to be_truthy
      expect(reset.user).to eq(user)
      new_password = assigns(:new_password)
      expect(new_password).to match(/[A-Z0-9]+/)
      expect(response.body).to match(/#{Regexp.escape(reset.user.login)}/)
      expect(response.body).to match(/#{Regexp.escape(new_password)}/)
    end
  end
end
