class DDWDatabase #< ActiveRecord::Base
  #establish_connection "ddw_#{Rails.env}"
  @abstract_class = true
  
  # This hook is called when DDWDatabase is subclassed.  We use it to set
  # the table name from the class name (just like ActiveRecord does)
  def self.inherited(c)
    super
    table_name = c.name.tableize.gsub(/^ddw_/,'')
    id_field = table_name.singularize + "_id"
    #c.set_table_name(table_name)
    #c.set_primary_key(id_field)
  end
  
  
  def self.set_table_name(value)
    
  end
  
  def self.set_primary_key(value)
    
  end
  
  def self.has_many(*args)
  end
  
  def self.has_and_belongs_to_many(*args)
  end
  
  def self.belongs_to(*args)
  end
  
  
  # This application should not be writing to the DDW database
  def readonly?
    true
  end
end