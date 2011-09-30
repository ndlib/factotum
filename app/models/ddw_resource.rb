class DDWResource < DDWDatabase
  has_and_belongs_to_many :terms, :class_name => "DDWTerm", :join_table => "terms_resources", :foreign_key => "resource_id", :association_foreign_key => "term_id"
  has_many :locations, :class_name => "DDWResourceLocation", :foreign_key => "resource_id"
  
  def subject_term
    tmp_terms = self.terms.where(:facet_id => DDWFacet.subject.id)
    if tmp_terms.size > 1
      raise "There should only be one subject term for #{self.resource_name}"
    end
    tmp_terms.first
  end
end