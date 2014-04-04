class DirectorySelectorSubject < ActiveRecord::Base

  belongs_to :employee, :class_name => "DirectoryEmployee"
  belongs_to :subject, :class_name => "DirectorySubject"
  
  validates :employee_id, presence: true
  validates :subject_id, presence: true

  scope :sorted_by_employee, joins(:employee).order("last_name asc, first_name asc")
  scope :sorted_by_subject, joins(:subject).order("name asc")

  attr_accessible :employee_id, :subject_id



end
