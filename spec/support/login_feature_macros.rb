module LoginFeatureMacros
  def login_user(user = nil)
    Warden.test_mode!
    user ||= FactoryGirl.create(:user)
    @current_user = user
    login_as(user, scope: :user)
  end

  def login_selector
    selector = FactoryGirl.create(:selector)
    login_user(selector.user)
  end

  def login_selector_admin
    selector = FactoryGirl.create(:selector_admin)
    login_user(selector.user)
  end
end
