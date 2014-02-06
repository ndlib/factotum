class EmployeeUnitView

  attr_accessor :employee_unit

  #employee_unit may not exist
  def initialize(employee_unit, initiator, unit_type = nil)
    @employee_unit = employee_unit
    @initiator = initiator

    if unit_type.nil?
      @unit_type = @employee_unit.organizational_unit.type
    else
      @unit_type = unit_type  
    end
  end


  def show_unit_title?
    return @unit_type == 'DirectoryDepartment'
  end


  def head?
    return "Y" if @employee_unit.head
  end

  def show_organization_dropdown?
    if @employee_unit.organizational_unit.nil? or @initiator.class.name == "DirectoryEmployee"
        return true
    else
        return false
    end
  end


  def show_employee_dropdown?
    return @employee_unit.employee.nil?
  end


  def chair_head_display
    if @unit_type == 'DirectoryDepartment'
      return "Head"
    else
      return "Chair"
    end
  end
  

  def unit_type_display
    @unit_type.underscore.humanize.titleize.sub "Directory ", ""
  end


  def title_display
    if @initiator.class.name == "DirectoryEmployee"
      return "Employees' #{unit_type_display}"
    else
      return "Employee"
    end
  end


  def row_name_to_display
    return eval("@employee_unit.#{initiator_inverse}.to_s")
  end


  def initiator_type
    @initiator.becomes(@initiator.class.base_class).class.to_s.underscore.sub "directory_", ""
  end


  def initiator_inverse
    if initiator_type == "employee"
      return "organizational_unit"
    else 
      return "employee"
    end
  end  

end