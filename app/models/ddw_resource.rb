class DDWResource < ActiveRecord::Base
  establish_connection "ddw_#{Rails.env}"
  set_table_name "resources"
  
  has_and_belongs_to_many :terms, :class_name => "DDWTerm", :join_table => "terms_resources", :foreign_key => "resource_id", :association_foreign_key => "term_id"
  has_many :locations, :class_name => "DDWResourceLocation", :foreign_key => "resource_id"
end