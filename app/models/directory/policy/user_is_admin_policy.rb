
class UserIsAdminPolicy

  def initialize(directory_user)
    @directory_user = directory_user
  end


  def is_admin?
    @directory_user.admin?
  end
end
