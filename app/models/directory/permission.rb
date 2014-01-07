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


  def current_user_can_edit?(inst)
    if inst.class.name == 'DirectoryEmployee'
  	  UserCanEditEmployeePolicy.new(@current_user, inst).supervises_employee? || current_user_is_administrator? || @current_user == inst

    elsif inst.is_a?(DirectoryOrganizationalUnit)
      current_user_is_administrator?

    end

  end


  def current_user_can_add_employee?
    current_user_is_administrator?
  end


  def current_user_can_add_organization?
    current_user_is_administrator?
  end




end
