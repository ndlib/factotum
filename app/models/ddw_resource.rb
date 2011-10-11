class DDWResource < DDWDatabase
  has_many :terms_resources, :class_name => "DDWTermsResource", :foreign_key => "resource_id"
  has_many :terms, :through => :terms_resources
  #has_and_belongs_to_many :subject_terms, :class_name => "DDWTerm", :join_table => "terms_resources", :foreign_key => "resource_id", :association_foreign_key => "term_id", :conditions => {"terms.facet_id" => DDWFacet.subject.id}
  has_many :locations, :class_name => "DDWResourceLocation", :foreign_key => "resource_id"
  
  
  def subject_term
    self.subject_terms.first
  end
end