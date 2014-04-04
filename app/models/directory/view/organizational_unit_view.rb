class OrganizationalUnitView

  attr_accessor :organizational_unit

  # organizational_unit may not exist
  def initialize(organizational_unit)
    @organizational_unit = organizational_unit
    @unit_type = @organizational_unit.type
  end


  def show_parent_organization?
    return @unit_type == 'DirectoryDepartment'
  end


  def show_employee_title?
    return @unit_type == 'DirectoryDepartment'
  end


  def chair_head_display
    if @unit_type == 'DirectoryDepartment'
      return "Head"
    else if @unit_type == 'DirectoryLibraryTeam'
      return "Chair"
    else
      return "Library Representative"
    end
  end


  def unit_type_display
    @unit_type.underscore.humanize.titleize.sub "Directory ", ""
  end


end
