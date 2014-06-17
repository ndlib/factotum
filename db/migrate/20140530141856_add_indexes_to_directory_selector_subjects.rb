class AddIndexesToDirectorySelectorSubjects < ActiveRecord::Migration
  def change
    add_index :directory_selector_subjects, :employee_id
    add_index :directory_selector_subjects, :subject_id
  end
end
