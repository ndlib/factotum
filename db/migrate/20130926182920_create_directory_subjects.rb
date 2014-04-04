class CreateDirectorySubjects < ActiveRecord::Migration
  def change
    create_table :directory_subjects do |t|
		t.string :name
      	t.timestamps
    end
  end
end
