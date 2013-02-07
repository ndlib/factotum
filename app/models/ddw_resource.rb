class DDWResource < DDWDatabase
  has_many :terms_resources, :class_name => "DDWTermsResource", :foreign_key => "resource_id"
  has_many :terms, :through => :terms_resources
  has_many :locations, :class_name => "DDWResourceLocation", :foreign_key => "resource_id"
  
  def subject_terms
    terms.where(:facet_id => DDWFacet.subject_id)
  end

  def subject_term
    self.subject_terms.first
  end
end
