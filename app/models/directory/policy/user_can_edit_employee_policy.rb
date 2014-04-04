
class UserCanEditEmployeePolicy

  def initialize(directory_user, employee)
    @directory_user = directory_user
    @employee = employee
  end

  def can_edit?
  	supervises_employee? ||  is_librarian? || is_manager?
  end	


  def supervises_employee?
  	@employee.principles.select { |principle| principle.id == @directory_user.username }.present?
  end



  def is_librarian?
    current_user && @employee.is_librarian?
  end

  def is_manager?
    current_user && @employee.is_manager?
  end  

  def current_user
    @directory_user.username == @employee.netid
  end


end


