class DirectoryDepartment < DirectoryOrganizationalUnit
  #has_many :employee_units, :class_name => "DirectoryEmployeeUnit"

	def self.top_level() 
		where("parent_organizational_unit_id = '0'")
	end




end