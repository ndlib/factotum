class DDWTermsResource < DDWDatabase
  belongs_to :term, :class_name => "DDWTerm", :foreign_key => "term_id"
  belongs_to :resource, :class_name => "DDWResource", :foreign_key => "resource_id"
end