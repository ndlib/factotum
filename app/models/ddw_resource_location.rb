class DDWResourceLocation < ActiveRecord::Base
  establish_connection "ddw_#{Rails.env}"
  set_table_name "resource_location"
  
  belongs_to :resource, :class_name => "DDWResource", :foreign_key => "resource_id"
  belongs_to :location_type, :class_name => "DDWResourceLocationType", :foreign_key => "resource_location_type"
end