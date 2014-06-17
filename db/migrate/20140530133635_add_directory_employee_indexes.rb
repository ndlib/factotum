class AddDirectoryEmployeeIndexes < ActiveRecord::Migration
  def change
    add_index :directory_employees, :first_name
    add_index :directory_employees, :last_name
    add_index :directory_employees, :status_id
  end
end
