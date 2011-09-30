class DDWTerm < DDWDatabase
  QUICKSEARCH_TERM_NAME = "MetaLib Quick Search"
  
  belongs_to :facet, :class_name => "DDWFacet", :foreign_key => "facet_id"
  has_and_belongs_to_many :resources, :class_name => "DDWResource", :join_table => "terms_resources", :foreign_key => "term_id", :association_foreign_key => "resource_id"
  has_and_belongs_to_many :librarians, :class_name => "DDWLibrarian", :join_table => "terms_librarians", :foreign_key => "term_id", :association_foreign_key => "librarian_id"
  
  def quicksearch_resource
    
  end
  
  def self.quicksearch
    self.where(:term_name => QUICKSEARCH_TERM_NAME).first
  end
end