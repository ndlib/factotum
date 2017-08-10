class DirectoryLibraryTeam < DirectoryOrganizationalUnit

  def self.sorted
    self.order(:name)
  end


  def chairs
    chairs = []
    employees = DirectoryEmployeeUnit.select("employee_id").where("head = 1 AND organizational_unit_id = ?", self.id).uniq
    employees.each do |employee|
      employee = DirectoryEmployee.where(id: employee.employee_id).first
      if !employee.nil?
        chairs.push(employee)
      end
    end
    return chairs
  end

  def unit_url
    return "#{Rails.configuration.library_url}#{unit_path}"
  end

  private

  def unit_path
    Rails.application.routes.url_helpers.directory_library_team_path(id)
  end
end
