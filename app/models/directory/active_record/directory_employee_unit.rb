class DirectoryEmployeeUnit < ActiveRecord::Base

  belongs_to :employee, :class_name => "DirectoryEmployee", :foreign_key => "employee_id"
  belongs_to :organizational_unit, :class_name => "DirectoryOrganizationalUnit", :foreign_key => "organizational_unit_id"
  
  belongs_to :department, :class_name => "DirectoryDepartment", :foreign_key => "organizational_unit_id"
  belongs_to :university_committee, :class_name => "DirectoryUniversityCommittee", :foreign_key => "organizational_unit_id"
  belongs_to :library_team, :class_name => "DirectoryLibraryTeam", :foreign_key => "organizational_unit_id"

  validates :employee_id, presence: true
  validates :organizational_unit_id, presence: true

  scope :sorted, joins(:employee).order("head desc, last_name asc, first_name asc")
  scope :sorted_head, order("head desc")
  scope :sorted_employees, joins(:employee).order("last_name, first_name")

  scope :departments, joins(:department)
  scope :library_team, joins(:library_team)
  scope :university_committees, joins(:university_committee)


  # when employee has two titles in the same department
  def self.all_titles_for_employee(employee_id, organizational_unit_id)
    where(employee_id: employee_id, organizational_unit_id: organizational_unit_id).pluck("employee_unit_title")
  end




end
