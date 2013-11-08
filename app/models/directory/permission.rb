class Permission

  def initialize(current_user)
    @current_user = current_user
  end


  def current_user_is_administrator?
    UserIsAdminPolicy.new(@current_user).is_admin?
  end


  def current_user_is_library_employee?
    # Used to determine if the person logged in can view pictures
  end



end
