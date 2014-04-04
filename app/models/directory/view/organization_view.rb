class OrganizationView

  def initialize

  end
  

  def employee_unit_all_titles(organizational_unit_id, employee_id)
  	DirectoryEmployeeUnit.all_titles_for_employee(employee_id, organizational_unit_id)
  end


  def show_division_collapse_div(level)
  	true if level == 2
  end

  def show_program_collapse_div(level)
  	true if level == 3
  end


end



