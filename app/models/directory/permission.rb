class Directory::Permission

  def initialize(directory_user)
    @directory_user = directory_user
  end


  def current_user_is_administrator?
    UserIsAdminPolicy.new(@directory_user).is_admin?
  end

  def current_user_is_library_employee?
	#used to determine if "hidden" employee photos can be viewed    
  	UserIsLibraryEmployeePolicy.new(@directory_user).is_current_library_employee?
  end


  def current_user_can_edit?(inst)
    if current_user_is_administrator?
      return true
    else
      if inst.class.name == 'DirectoryEmployee'
    	  UserCanEditEmployeePolicy.new(@directory_user, inst).can_edit?

      elsif inst.is_a?(DirectoryOrganizationalUnit)
        UserCanEditOrganizationalUnitPolicy.new(@directory_user, inst).can_edit?
      end
    end

  end


  def current_user_can_add_employee?
    current_user_is_administrator?
  end


  def current_user_can_add_organization?
    current_user_is_administrator?
  end

  def current_user_can_add_subject?
    current_user_is_administrator?
  end



end
