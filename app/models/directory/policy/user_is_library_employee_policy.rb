
class UserIsLibraryEmployeePolicy

  def initialize(user)
    @user = user
  end


  def is_library_employee?
    @user.admin?
  end
end


