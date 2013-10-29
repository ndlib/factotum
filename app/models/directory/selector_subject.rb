class Directory::SelectorSubject < ActiveRecord::Base

  belongs_to :employee, :class_name => "Directory::Employee"
  belongs_to :subject, :class_name => "Directory::Subject"
  

end
