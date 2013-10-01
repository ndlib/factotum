class AddColumnsToDirectoryEmployees < ActiveRecord::Migration
  def change
	remove_column :directory_employees, :rank
	add_column :directory_employees, :rank_id, :integer
	add_column :directory_employees, :status_id, :integer
  end
end
