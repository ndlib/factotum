class DirectoryDepartment < DirectoryOrganizationalUnit
  

	def self.top_level() 
		where("parent_organizational_id: '0'")
	end




end