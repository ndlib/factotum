module RefworksSpecHelper
  def refworks_test_user_row
    '<TR CLASS="SF"><TD CLASS="SF"><INPUT TYPE="CHECKBOX" NAME="Selected" Value="7369" ONCLICK="if (!this.checked) {document.DeleteForm.SelectAll.checked = false;}"></TD></TD><TD CLASS="SF">&nbsp;7369</TD><TD CLASS="SF">&nbsp;<a href="javascript:showUserInfo(7369)">2</a></TD><TD CLASS="SF">&nbsp;ndrefworkstest</TD><TD CLASS="SF">&nbsp;Refworks Test</TD><TD CLASS="SF">&nbsp;<a href="mailto:jkennel@nd.edu">jkennel@nd.edu</a></TD><TD CLASS="SF">&nbsp;Mon Sep 19 17:21:41 EDT 2011</TD><TD CLASS="SF">&nbsp;Mon Sep 19 17:19:22 EDT 2011</TD><TD CLASS="SF">&nbsp;0</TD><TD class="SF">&nbsp;Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7; rv:6.0.2) Gecko/20100101 Firefox/6.0.2|IP=129.74.226.127Lang=en-us,en;q=0.5</TD></TR>'
  end

  def refworks_test_user_attributes
    {
      :refworks_id => "7369", 
      :number_of_logins => "2", 
      :login => 'ndrefworkstest', 
      :name => "Refworks Test", 
      :email => "jkennel@nd.edu", 
      :last_login_date => "Mon Sep 19 17:21:41 EDT 2011", 
      :refworks_creation_date => "Mon Sep 19 17:19:22 EDT 2011", 
      :last_ref_id => "0", 
      :browser_info => "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7; rv:6.0.2) Gecko/20100101 Firefox/6.0.2|IP=129.74.226.127Lang=en-us,en;q=0.5"
    }
  end

  def refworks_bad_user_row
    '<TR CLASS="SF"><TD CLASS="SF"><TD CLASS="SF">&nbsp;ndrefworkstest</TD><TD CLASS="SF">&nbsp;Refworks Test</TD><TD CLASS="SF">&nbsp;<a href="mailto:jkennel@nd.edu">jkennel@nd.edu</a></TD><TD CLASS="SF">&nbsp;Mon Sep 19 17:21:41 EDT 2011</TD><TD CLASS="SF">&nbsp;Mon Sep 19 17:19:22 EDT 2011</TD><TD CLASS="SF">&nbsp;0</TD><TD class="SF">&nbsp;Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7; rv:6.0.2) Gecko/20100101 Firefox/6.0.2|IP=129.74.226.127Lang=en-us,en;q=0.5</TD></TR>'
  end
end
