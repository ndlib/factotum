class DirectoryDepartment < DirectoryOrganizationalUnit

  has_many :children_departments, :class_name => DirectoryDepartment, :foreign_key => "parent_organizational_unit_id"
  belongs_to :parent_department, :class_name => DirectoryDepartment, :foreign_key => "parent_organizational_unit_id"
  
  scope :default_order, -> { self.order(:name) }
  default_scope { where(:type => 'DirectoryDepartment').default_order }

  
  def self.sorted
    self.order(:name)
  end


  def self.top_level
	   where("parent_organizational_unit_id = '0'").first
  end

  def self.department_types
    ['', 'Division', 'Program', 'Unit', 'Sub-unit', 'Sub-unit']
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


  def parents
    if parent_department.nil?
      return []
    else 
      [parent_department] + parent_department.parents
    end
  end


  def self_and_parents
    [self] + parents
  end

  def parents_with_department_types
    departments = []
    self_and_parents.reverse.each_with_index do |d,i|
      departments.push([:directory_department => d, :department_type => self.department_types[i]])
    end  
    return departments
  end

  def managers_with_members
    managers + members
  end

  def managers
    managers = []
    employees = DirectoryEmployeeUnit.select("employee_id").where("head = 1 AND organizational_unit_id = ?", self.id).uniq

    # if there's no head set up for this department, get the parent department's head
    pd = self

    while !employees.any?
      employees = DirectoryEmployeeUnit.select("employee_id").where("head = 1 AND organizational_unit_id = ?", pd.id).uniq
      pd = pd.parent_department
    end  

    employees.sorted.each do |employee|
      managers.push(DirectoryEmployee.find(employee.employee_id))
    end

    return managers
  end


  def members
    members = []
    employees = DirectoryEmployeeUnit.select("employee_id").where("head != 1 AND organizational_unit_id = ?", self.id).uniq
    employees.sorted.each do |employee|
      members.push(DirectoryEmployee.find(employee.employee_id))
    end
    return members
  end


end
