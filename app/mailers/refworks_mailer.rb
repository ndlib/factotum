class RefworksMailer < ActionMailer::Base
  helper :refworks_password_reset
  default :from => "er-acq-list@nd.edu"

  def password_reset(refworks_password_reset)
    @refworks_password_reset = refworks_password_reset
    @user = refworks_password_reset.users.first
    @url = reset_refworks_password_reset_url(@refworks_password_reset.token)
    mail(:to => @user.email, :name => @user.name, :subject => "Instructions for resetting your RefWorks Password")
  end
end
