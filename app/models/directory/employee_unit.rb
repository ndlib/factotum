class Directory::EmployeeUnit < ActiveRecord::Base

  belongs_to :employee, :class_name => "Directory::Employee"
  belongs_to :organizational_unit, :class_name => "Directory::OrganizationalUnit"  
  
  belongs_to :department, :class_name => "Directory::Department"
  belongs_to :university_committee, :class_name => "Directory::UniversityCommittee"
  belongs_to :library_committee, :class_name => "Directory::LibraryCommittee"



end
