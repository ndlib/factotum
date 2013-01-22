class DDWResourceLocationType < DDWDatabase
  self.table_name = "resource_location_type"
  self.primary_key = "type_id"
  
  has_many :locations, :class_name => "DDWResourceLocation", :foreign_key => "resource_location_type"
end