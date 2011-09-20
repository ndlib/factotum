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
      post :create, :refworks_password_reset => {:email_or_login => user.email}
    }.should change(ActionMailer::Base.deliveries, :size).by(1)

    last_delivery = ActionMailer::Base.deliveries.last
    last_delivery.to.should include user.email
    response.should be_redirect
  end
  
  it "should redirect on successful submission of an login" do
    user = FactoryGirl.create(:refworks_user)
    post 'create', :refworks_password_reset => {:email_or_login => user.login}
    response.should be_redirect
  end
  
  it "should render if an invalid email or login is given" do
    user = FactoryGirl.build(:refworks_user)
    post 'create', :refworks_password_reset => {:email_or_login => "asdfasdf"}
    response.should be_success
  end
end
