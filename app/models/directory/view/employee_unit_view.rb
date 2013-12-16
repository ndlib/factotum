class EmployeeUnitView

  attr_accessor :employee_unit

  #employee_unit may not exist
  def initialize(employee_unit, unit_type = nil)
    @employee_unit = employee_unit

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
    return "Y" if @employee_unit.chair
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


end
