class UserIsSubjectLibrarianPolicy
  
  def initialize(employee)
    @employee = employee
  end


  def is_subject_librarian?
    @employee.has_subjects?
  end

end
