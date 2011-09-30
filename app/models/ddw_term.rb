class DDWTerm < DDWDatabase
  QUICKSEARCH_TERM_NAME = "MetaLib Quick Search"
  
  has_and_belongs_to_many :resources, :class_name => "DDWResource", :join_table => "terms_resources", :foreign_key => "term_id", :association_foreign_key => "resource_id"
  
  def self.quicksearch
    self.where(:term_name => QUICKSEARCH_TERM_NAME).first
  end
end