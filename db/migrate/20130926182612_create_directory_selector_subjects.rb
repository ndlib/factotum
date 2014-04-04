class CreateDirectorySelectorSubjects < ActiveRecord::Migration
  def change
    create_table :directory_selector_subjects do |t|
    	t.integer :employee_id
    	t.integer :subject_id
      	t.timestamps
    end
  end
end
