class DirectoryDepartment < DirectoryOrganizationalUnit

  has_many :children_departments, :class_name => DirectoryDepartment, :foreign_key => "parent_organizational_unit_id"
  belongs_to :parent_department, :class_name => DirectoryDepartment
  
  scope :default_order, -> { self.order(:name) }
  default_scope { where(:type => 'DirectoryDepartment').default_order }

  
  def self.sorted
    self.order(:name)
  end


  def self.top_level
	   where("parent_organizational_unit_id = '0'").first
  end

  def distinct_employees_in_unit
    return employee_units.select("employee_id, head").group("employee_id, head").sorted
  end


  def descendants_by_level(l=1)
    children_departments.sorted.map.with_index do |ch, i|
      if i == 0 then
        position = "first" 
      elsif i == children_departments.count-1
        position = "last"
      else
        position = children_departments.count
      end


      [:directory_department => ch, :level => l, :position => position] << [ch.descendants_by_level(l+1)]
    end.flatten
  end


  def self_and_descendants_by_level
    [:directory_department => self, :level => 1, :position => ""] << descendants_by_level(2)
  end



  def managers
    managers = []
    employees = DirectoryEmployeeUnit.select("employee_id").where("head = 1 AND organizational_unit_id = ?", self.id).uniq
    employees.each do |employee|
      managers.push(DirectoryEmployee.find(employee.employee_id))
    end
    return managers
  end


end
