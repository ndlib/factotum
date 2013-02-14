module LoginMacros
  def login_user
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      user = FactoryGirl.create(:user)
      sign_in user
    end
  end

  def login_selector
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      selector = FactoryGirl.create(:selector)
      sign_in selector.user
    end
  end

  def login_selector_admin
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      selector = FactoryGirl.create(:selector_admin)
      sign_in selector.user
    end
  end
end
