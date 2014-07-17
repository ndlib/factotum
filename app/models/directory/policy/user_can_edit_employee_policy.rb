
class UserCanEditEmployeePolicy

  def initialize(directory_user, employee)
    @directory_user = directory_user
    @employee = employee
  end

  def can_edit?
  	supervises_employee? ||  is_librarian? || is_manager? || in_admin_office?
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

  def in_admin_office?
    current_user && @employee.departments.select { |d| d == DirectoryDepartment.top_level }.present?
  end  

end


