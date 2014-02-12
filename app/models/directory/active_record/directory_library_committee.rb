class DirectoryLibraryCommittee < DirectoryOrganizationalUnit
  
  def self.sorted
    self.order(:name)
  end


  def chairs
    chairs = []
    employees = DirectoryEmployeeUnit.select("employee_id").where("head = 1 AND organizational_unit_id = ?", self.id).uniq
    employees.each do |employee|
      chairs.push(DirectoryEmployee.find(employee.employee_id))
    end
    return chairs
  end

end