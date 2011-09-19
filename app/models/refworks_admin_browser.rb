class RefworksAdminBrowser < RefworksBrowser
  LOGIN_URL = "https://www.refworks.com/userlog/detail.asp"
  USER_LIST_URL = "https://www.refworks.com/userlog/AdminViewActivity.asp"
  
  # Retrieves the list of users accounts that may access Refworks
  # number_of_days_since_last_visit is an integer used in three different ways:
  #  Positive: A positive value shows all users that have logged in in the last X days
  #  Zero: A value of 0 will list all users
  #  Negative: A negative value shows all users that have NOT logged in in the last X days
  def get_user_list(number_of_days_since_last_visit=7)
    self.log_in!
    page = browser.post(USER_LIST_URL, {:range => number_of_days_since_last_visit})
    page.body
  end
  
  def logged_in?
    @logged_in == true
  end
  
  def log_in!(group_code = nil, password = nil)
    group_code ||= REFWORKS_ADMIN_USERNAME
    password ||= REFWORKS_ADMIN_PASSWORD
    if !self.logged_in?
      page = browser.post(LOGIN_URL, "GroupCode" => group_code, "password" => password)
      if (valid_login?(page.body))
        @logged_in = true
      end
    end
    @logged_in
  end
  
  private
    
    def valid_login?(body)
      !(body =~ /The information you entered was incorrect/)
    end
end