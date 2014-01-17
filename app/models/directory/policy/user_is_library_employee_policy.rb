
class UserIsLibraryEmployeePolicy

  def initialize(current_user)
    @current_user = current_user
  end


  def is_current_library_employee?
  	DirectoryEmployee.exists?(:netid => @current_user.username)
  end
end


