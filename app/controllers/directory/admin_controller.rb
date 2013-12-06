class Directory::AdminController < Directory::ApplicationController
  before_filter :authenticate_user!
  #before_filter :check_admin_permission!


  # probably no index?
  def index
    #current_directory_user = DirectoryEmployee.find_by_netid(current_user.netid)
  end





  def check_admin_permission!
    if !permission.current_user_is_administrator?
      flash[:error] = "You are not authorized to view that page."
      redirect_to directory_organization_path
    end
  end



end
