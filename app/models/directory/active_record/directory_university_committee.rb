class DirectoryUniversityCommittee < DirectoryOrganizationalUnit


  def self.sorted
    self.order(:name)
  end

  def chairs
    @chairs ||= [].tap do |chairs|
      employees = DirectoryEmployeeUnit.select("employee_id").where("head = 1 AND organizational_unit_id = ?", self.id).uniq
      employees.each do |employee|
        employee_record = DirectoryEmployee.where(id: employee.employee_id).first
        if employee_record
          chairs.push(employee_record)
        end
      end
    end
  end

  def unit_url
    "#{Rails.configuration.library_url}#{unit_path}"
  end

  private

  def unit_path
    Rails.application.routes.url_helpers.directory_university_committee_path(id)
  end

end
