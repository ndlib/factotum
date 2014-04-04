class AddHidePhotoIndToDirectoryEmployees < ActiveRecord::Migration
  def change
	add_column :directory_employees, :hide_photo_ind, :boolean
  end
end
