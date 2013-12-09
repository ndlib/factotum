class DirectoryEmployeeUnit < ActiveRecord::Base

  belongs_to :employee, :class_name => "DirectoryEmployee", :foreign_key => "employee_id"
  belongs_to :organizational_unit, :class_name => "DirectoryOrganizationalUnit", :foreign_key => "organizational_unit_id"
  
  belongs_to :department, :class_name => "DirectoryDepartment", :foreign_key => "organizational_unit_id"
  belongs_to :university_committee, :class_name => "DirectoryUniversityCommittee", :foreign_key => "organizational_unit_id"
  belongs_to :library_committee, :class_name => "DirectoryLibraryCommittee", :foreign_key => "organizational_unit_id"

  validates :employee_id, presence: true
  validates :organizational_unit_id, presence: true

  scope :sorted_chair, order("chair desc")
  scope :sorted_employees, joins(:employee).order("last_name, first_name")

  scope :departments, joins(:department)
  scope :library_committees, joins(:library_committee)
  scope :university_committees, joins(:university_committee)


end
