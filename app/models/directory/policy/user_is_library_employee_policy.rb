
class UserIsLibraryEmployeePolicy

  def initialize(user)
    @user = user
  end


  def is_current_library_employee?
  	e = DirectoryEmployee.find_by_netid(@current_user.netid);
  	e.status_id != "10"  #there's gotta be a better way than hardcoding?
  end
end


