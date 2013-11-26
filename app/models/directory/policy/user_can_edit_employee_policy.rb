
class UserCanEditEmployeePolicy

  def initialize(current_user, employee)
    @current_user = current_user
    @employee = employee
  end


  def supervises_employee?
  	user_employee = DirectoryEmployee.find_by_netid(@current_user.netid);

  	
  end
end


