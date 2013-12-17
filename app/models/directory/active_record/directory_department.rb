class DirectoryDepartment < DirectoryOrganizationalUnit

  has_many :children_departments, :class_name => DirectoryDepartment, :foreign_key => "parent_organizational_unit_id"
  belongs_to :parent_department, :class_name => DirectoryDepartment
  
  scope :default_order, -> { self.order(:name) }
  default_scope { where(:type => 'DirectoryDepartment').default_order }


  def self.top_level
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


  def managers
    managers = []
    employee_units = DirectoryEmployeeUnit.where("head = 1 AND organizational_unit_id = ?", self.id)
    employee_units.each do |employee_unit|
      managers.push(DirectoryEmployee.find(employee_unit.employee_id))
    end
    return managers
  end

end
