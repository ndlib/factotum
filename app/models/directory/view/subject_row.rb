class SubjectRow

  delegate :id, :subject_librarians, :name, :full_name, :lc_class, :webpages, :to => :subject

  attr_accessor :subject

  def initialize(subject)
    @subject = subject
  end


  def full_name
    if !@subject.lc_class.blank?
      "#{@subject.name} (#{@subject.lc_class})"
    else
      @subject.name
    end
  end

end
