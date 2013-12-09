class Directory::Permission

  def initialize(current_user)
    @current_user = current_user
  end


  def current_user_is_administrator?
    UserIsAdminPolicy.new(@current_user).is_admin?
  end

  def current_user_is_library_employee?
	#used to determine if "hidden" employee photos can be viewed    
  	UserIsLibraryEmployeePolicy.new(@current_user).is_current_library_employee?
  end


  def current_user_can_edit_employee?(employee)
  	UserCanEditEmployeePolicy.new(@current_user, employee).supervises_employee? || current_user_is_administrator? || @current_user == employee
  end





end
