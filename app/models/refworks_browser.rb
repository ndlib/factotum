class RefworksBrowser
  ADMIN_LOGIN_URL = "https://www.refworks.com/userlog/detail.asp"
  ADMIN_USER_LIST_URL = "https://www.refworks.com/userlog/AdminViewActivity.asp"
  ADMIN_USER_LIST_ARGS = {"range" => "1"} # {"range" => "1"} grabs users that have accessed in the last day, {"range" => "0"} will get all users
  PUBLIC_LOGIN_URL = "https://www.refworks.com/refworks2/?r=authentication::init&groupcode=RWUnivNotreDame"
  
  def admin_browser
    @admin_browser ||= Mechanize.new
  end
  
  def get_user_list
    admin_log_in
    page = admin_browser.post(ADMIN_USER_LIST_URL, ADMIN_USER_LIST_ARGS)
    page.body
  end
  
  def admin_log_in
    if !admin_logged_in?
      page = admin_browser.post(ADMIN_LOGIN_URL, "GroupCode" => REFWORKS_ADMIN_USERNAME, "password" => REFWORKS_ADMIN_PASSWORD)
      @admin_logged_in = true
    end
    true
  end
  
  def admin_logged_in?
    @admin_logged_in == true
  end
end