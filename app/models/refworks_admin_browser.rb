class RefworksAdminBrowser < RefworksBrowser
  class PasswordNotFound < Exception
  end
  class InvalidUser < Exception
  end
  
  LOGIN_URL = "https://www.refworks.com/userlog/detail.asp"
  USER_LIST_URL = "https://www.refworks.com/userlog/AdminViewActivity.asp"
  USER_DETAIL_URL = "https://www.refworks.com/userlog/AdminUserDetail.asp"
  USER_PASSWORD_RESET_URL = "https://www.refworks.com/userlog/adminuserdetail.asp"
  PASSWORD_MATCH_REGEX = /The password has been reset to.*<b>([^<]+)<\/b>/
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
      else
        raise InvalidLogin, "Unable to log in to RefWorks Administration site"
      end
    end
    @logged_in
  end
  
  def reset_password_for!(user)
    self.log_in!
    detail_page = browser.post(USER_DETAIL_URL, {:ID => user.refworks_id, :Range => 7})
    if detail_page.body =~ /#{Regexp.escape(user.login)}/i && detail_page.body =~ /#{Regexp.escape(user.email)}/i
      page = browser.post(USER_PASSWORD_RESET_URL, {:Action => "RESETPW", :ID => user.refworks_id, :Range => 7, :Refer => USER_DETAIL_URL})
      return parse_password(page.body)
    else
      raise InvalidUser, "The user details for #{user.inspect} do not match the information in RefWorks.  Canceling password reset."
    end
  end
  
  def parse_password(body)
    match = PASSWORD_MATCH_REGEX.match(body)
    if match.present?
      match[1]
    else
      raise PasswordNotFound, "The new password could not be read."
    end
  end
  
  private
    
    def valid_login?(body)
      !(body =~ /The information you entered was incorrect/)
    end
end