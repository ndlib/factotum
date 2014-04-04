class RenameChairColumnDirectoryEmployeeUnit < ActiveRecord::Migration
  def change
    rename_column :directory_employee_units, :chair, :head    
  end
end
