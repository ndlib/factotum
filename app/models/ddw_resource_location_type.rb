class DDWResourceLocationType < ActiveRecord::Base
  establish_connection "ddw_#{Rails.env}"
  set_table_name "resource_location_type"
  
  has_many :locations, :class_name => "DDWResourceLocation", :foreign_key => "resource_location_type"
end