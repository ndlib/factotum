class Directory::AdminController < Directory::ApplicationController
  before_filter :login_user!


  def check_admin_permission!
    if !permission.current_user_is_administrator?
      flash[:error] = "You are not authorized to view that page."
      redirect_to directory_path
    end
  end



end
