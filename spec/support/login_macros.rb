module LoginMacros
  # Devise integration based off of https://github.com/plataformatec/devise/wiki/How-To:-Controllers-and-Views-tests-with-Rails-3-(and-rspec)
  # After being signed in the current user is available to the controller/view/helper:
  #  Controllers: subject.current_user
  #  Views: view.current_user
  #  Helpers: helper.current_user
  def login_user(user = nil)
    @request.env["devise.mapping"] = Devise.mappings[:user]
    user ||= FactoryBot.create(:user)
    sign_in user
  end
end
