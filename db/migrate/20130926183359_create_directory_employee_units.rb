class CreateDirectoryEmployeeUnits < ActiveRecord::Migration
  def change
    create_table :directory_employee_units do |t|
    	t.integer :employee_id
    	t.integer :organizational_unit_id
    	t.boolean :chair, :default => false
    	t.string :employee_unit_title
      	t.timestamps
    end
  end
end
