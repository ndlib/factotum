class AddStartDateToDirectoryEmployee < ActiveRecord::Migration
  def change
	add_column :directory_employees, :start_date, :date
  end
end
