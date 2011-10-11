class DDWFacet < DDWDatabase
  SUBJECT_FACET_NAME = "Subjects"
  
  has_many :terms, :class_name => "DDWTerm", :foreign_key => "facet_id"
  
  def self.subject
    self.where(:facet_name => SUBJECT_FACET_NAME).first
  end
end