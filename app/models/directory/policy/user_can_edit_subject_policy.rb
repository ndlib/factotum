
class UserCanEditSubjectPolicy

  def initialize(directory_user, subject)
    @directory_user = directory_user
    @subject = subject
  end

  def can_edit?
    subjects_selector?
  end 

  def subjects_selector?
    @subject.subject_librarians.select { |sl| sl.netid == @directory_user.username }.present?
  end


end


