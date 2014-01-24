
class UserCanEditEmployeePolicy

  def initialize(directory_user, employee)
    @directory_user = directory_user
    @employee = employee
  end

  def can_edit?
  	supervises_employee? ||  @directory_user.username == @employee.netid
  end	


  def supervises_employee?
  	@employee.principles.select { |principle| principle.id == @directory_user.username }.present?
  end

end


