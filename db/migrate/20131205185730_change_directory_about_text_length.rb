class ChangeDirectoryAboutTextLength < ActiveRecord::Migration
  def change
	change_column :directory_employees, :about_text, :text
	change_column :directory_organizational_units, :about_text, :text


  end

end
