class SubjectRow

  delegate :id, :subject_librarians, :name, :lc_class, :to => :subject

  attr_accessor :subject

  def initialize(subject)
    @subject = subject
  end

end
