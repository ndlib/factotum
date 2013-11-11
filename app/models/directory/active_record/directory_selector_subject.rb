class DirectorySelectorSubject < ActiveRecord::Base

  belongs_to :employee, :class_name => "DirectoryEmployee"
  belongs_to :subject, :class_name => "DirectorySubject"
  
  validates :employee_id, presence: true
  validates :subject_id, presence: true


end
