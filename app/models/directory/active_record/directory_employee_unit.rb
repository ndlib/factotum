class DirectoryEmployeeUnit < ActiveRecord::Base

  belongs_to :employee, :class_name => "DirectoryEmployee"
  belongs_to :organizational_unit, :class_name => "DirectoryOrganizationalUnit"  
  
  belongs_to :department, :class_name => "DirectoryDepartment"
  belongs_to :university_committee, :class_name => "DirectoryUniversityCommittee"
  belongs_to :library_committee, :class_name => "DirectoryLibraryCommittee"



end
