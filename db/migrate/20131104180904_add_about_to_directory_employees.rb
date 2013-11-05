class AddAboutToDirectoryEmployees < ActiveRecord::Migration
  def change
    add_column :directory_employees, :about_text, :string
  end
end
