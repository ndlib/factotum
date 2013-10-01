class CreateDirectoryEmployeeStatuses < ActiveRecord::Migration
  def change
    create_table :directory_employee_statuses do |t|
	t.string :name	
        t.timestamps
    end
  end
end
