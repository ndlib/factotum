class AddColumnsToDirectorySubjects < ActiveRecord::Migration
  def change
	add_column :directory_subjects, :lc_class, :string
  end
end
