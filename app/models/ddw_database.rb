class DDWDatabase < ActiveRecord::Base
  establish_connection "ddw_#{Rails.env}"
  @abstract_class = true
  
  # This hook is called when DDWDatabase is subclassed.  We use it to set
  # the table name from the class name (just like ActiveRecord does)
  def self.inherited(c)
    super
    table_name = c.name.tableize.gsub(/^ddw_/,'')
    id_field = table_name.singularize + "_id"
    c.table_name = table_name
    c.primary_key = id_field
  end
  
  # This application should not be writing to the DDW database
  def readonly?
    true
  end
end