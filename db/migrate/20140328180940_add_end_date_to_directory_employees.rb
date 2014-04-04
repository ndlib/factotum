class AddEndDateToDirectoryEmployees < ActiveRecord::Migration
  def change
	add_column :directory_employees, :leave_date, :date
  end
end
