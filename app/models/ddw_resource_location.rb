class DDWResourceLocation < DDWDatabase
  self.table_name = "resource_location"
  
  belongs_to :resource, :class_name => "DDWResource", :foreign_key => "resource_id"
  belongs_to :location_type, :class_name => "DDWResourceLocationType", :foreign_key => "resource_location_type"
end