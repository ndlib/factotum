class DirectoryDepartment < DirectoryOrganizationalUnit

  has_many :children_departments, :class_name => DirectoryDepartment, :foreign_key => "parent_organizational_unit_id"
  belongs_to :parent_department, :class_name => DirectoryDepartment, :foreign_key => "parent_organizational_unit_id"


  def self.top_level() 
	   where("parent_organizational_unit_id = '0'").first
  end


  def descendants_by_level(i=1)
    children_departments.sorted.map do |ch|
      [:directory_department => ch, :level => i] << [ch.descendants_by_level(i+1)]
    end.flatten
  end


  def self_and_descendants_by_level
    [:directory_department => self, :level => 1] << descendants_by_level(2)
  end


end
