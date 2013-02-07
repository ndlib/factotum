class DDWLibrarian < DDWDatabase
  has_and_belongs_to_many :terms, :class_name => "DDWTerm", :join_table => "terms_librarians", :foreign_key => "librarian_id", :association_foreign_key => "term_id"
end
