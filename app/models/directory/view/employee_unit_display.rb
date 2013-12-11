

class EmployeeUnitDisplay

  attr_accessor :employee_unit

  def initialize(employee_unit)
    @employee_unit = employee_unit
  end

  def show_unit_title?
    return @employee_unit.organizational_unit.type == 'DirectoryDepartment'
  end

  def chair?
    return "Y" if @employee_unit.chair
  end



end
