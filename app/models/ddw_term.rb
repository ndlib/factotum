class DDWTerm < DDWDatabase
  QUICKSEARCH_TERM_NAME = "MetaLib Quick Search"
  
  belongs_to :facet, :class_name => "DDWFacet", :foreign_key => "facet_id"
  has_many :terms_resources, :class_name => "DDWTermsResource", :foreign_key => "term_id"
  has_many :resources, :through => :terms_resources, :include => [:subject_terms]
  has_and_belongs_to_many :librarians, :class_name => "DDWLibrarian", :join_table => "terms_librarians", :foreign_key => "term_id", :association_foreign_key => "librarian_id"
  
  def slug
    self.term_name.downcase.gsub(/[^ 0-9a-z]/,"").gsub(/ +/,"_")
  end
  
  def xerxes_slug
    self.term_name.downcase.gsub(/[^ 0-9a-z]/,"").gsub(" and ", " ").gsub(/ +/,"-")
  end
  
  def articles_url
    "http://www.library.nd.edu/subjects/"+self.slug+"/articles"
  end
  
  def xerxes_path
    "/quicksearch/databases/subject/"+xerxes_slug
  end
  
  def xerxes_url
    "http://xerxes.local" + xerxes_path
  end
  
  def self.quicksearch
    self.where(:term_name => QUICKSEARCH_TERM_NAME).first
  end
  
  def self.quicksearch_terms
    self.quicksearch.resources.collect{|r| r.subject_term}.reject{|t| t.nil?}
  end
end