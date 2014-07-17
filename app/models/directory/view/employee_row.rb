class EmployeeRow
  include DirectoryHelper

  delegate :id, :display_name, :principles, :descendents, :emails, :phones, :primary_address_information, :employee_units, :organizational_units, :departmental_units, :subjects, :supervisor, :subordinates, :employee_status, :primary_phone, :primary_fax, :primary_email, :primary_department, :primary_title, :about_text, :to => :employee

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

  def photo_url
    photo_url = "#{photo_path}#{@employee.netid}.jpg"

    uri = URI(photo_url)

    request = Net::HTTP.new uri.host
    response= request.request_head uri.path
    return photo_url if response.code.to_i == 200
  end

end
