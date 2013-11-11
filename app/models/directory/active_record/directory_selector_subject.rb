class DirectorySelectorSubject < ActiveRecord::Base

  belongs_to :employee, :class_name => "DirectoryEmployee"
  belongs_to :subject, :class_name => "DirectorySubject"
  

end
