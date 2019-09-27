# Devise login functionality for feature specs.  Based on http://blog.pixarea.com/2013/01/making-rspec-feature-specs-easy-with-devise
module LoginFeatureMacros
  def login_user(user = nil)
    Warden.test_mode!
    user ||= FactoryBot.create(:user)
    @current_user = user
    login_as(user, scope: :user)
  end
end
