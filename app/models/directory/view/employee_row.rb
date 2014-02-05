class EmployeeRow

  delegate :id, :display_name, :principles, :descendents, :emails, :phones, :addresses, :employee_units, :organizational_units, :departmental_units, :subjects, :supervisor, :subordinates, :photo, :employee_status, :primary_phone, :primary_email, :primary_department, :primary_title, :about_text, :to => :employee

  attr_accessor :employee

  def initialize(employee)
    @employee = employee
  end

  def show_subject_librarian_icon?
    UserIsSubjectLibrarianPolicy.new(@employee).is_subject_librarian?
  end

  def subject_librarian_subjects
    { partial: 'subject_librarian_subject_list', locals: { employee: @employee }}
  end

end
