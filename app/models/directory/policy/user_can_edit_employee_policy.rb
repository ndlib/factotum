
class UserCanEditEmployeePolicy

  def initialize(current_user, employee)
    @current_user = current_user
    @employee = employee
  end

  def can_edit_employee?
  	@current_user.current_user_is_administrator
  end	


  def supervises_employee?
  	return true if @employee.principles.select { |principle| principle.id == @current_user.username }
  end

end


