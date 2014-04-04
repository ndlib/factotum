class CreateDirectoryEmployeeRanks < ActiveRecord::Migration
  def change
    create_table :directory_employee_ranks do |t|
	t.string :name
      	t.timestamps
    end
  end
end
