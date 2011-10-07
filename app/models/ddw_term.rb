class DDWTerm < DDWDatabase
  QUICKSEARCH_TERM_NAME = "MetaLib Quick Search"
  
  XERXES_SLUGS = {
    "engineering-general" => "engineering",
    "history-us-canada" => "history-us-and-canada-",
    "history-world" => "history-world-",
    "library-information-science" => "library-and-information-sciences",
    "materials-science-including-biomaterials" => "materials-science-incl-biomaterials-"
  }
  
  XERXES_TERM_NAMES = {
    "Business (General)" => "Business, General",
    "Engineering (General)" => "Engineering",
    "History (U.S. and Canada)" => "History (US and Canada)",
    "Library and Information Science" => "Library and Information Sciences",
    "Materials Science (including Biomaterials)" => "Materials Science (incl Biomaterials)"
  }
  
  belongs_to :facet, :class_name => "DDWFacet", :foreign_key => "facet_id"
  has_many :terms_resources, :class_name => "DDWTermsResource", :foreign_key => "term_id"
  has_many :resources, :through => :terms_resources, :include => [:subject_terms]
  has_and_belongs_to_many :librarians, :class_name => "DDWLibrarian", :join_table => "terms_librarians", :foreign_key => "term_id", :association_foreign_key => "librarian_id"
  
  def self.default_order
    self.order("term_name ASC")
  end
  
  def library_slug
    self.term_name.downcase.gsub(/[^ 0-9a-z]/,"").gsub(/ +/,"_")
  end
  
  def articles_url
    "http://www.library.nd.edu/subjects/"+self.library_slug+"/articles"
  end
  
  def xerxes_slug
    slug = self.term_name.downcase.gsub(/[^ 0-9a-z]/,"").gsub(" and ", " ").gsub(/ +/,"-")
    if XERXES_SLUGS[slug]
      slug = XERXES_SLUGS[slug]
    end
    slug
  end
  
  def xerxes_path
    "/quicksearch/databases/subject/"+xerxes_slug
  end
  
  def xerxes_url
    "http://xerxes.library.nd.edu" + xerxes_path
  end
  
  def xerxes_name
    alternate_name = XERXES_TERM_NAMES[self.term_name]
    if alternate_name.blank?
      alternate_name = self.term_name.gsub(/ and /, " + ")
    end
    alternate_name
  end
  
  def self.quicksearch
    self.where(:term_name => QUICKSEARCH_TERM_NAME).first
  end
  
  def self.quicksearch_terms
    self.quicksearch.resources.collect{|r| r.subject_term}.reject{|t| t.nil?}.sort{|a,b| a.term_name <=> b.term_name}
  end
end