class AddIndexToDirectoryEmployeeUnits < ActiveRecord::Migration
  def change
    add_index :directory_employee_units, :employee_id
    add_index :directory_employee_units, :organizational_unit_id
  end
end
