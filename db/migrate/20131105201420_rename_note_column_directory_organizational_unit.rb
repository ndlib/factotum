class RenameNoteColumnDirectoryOrganizationalUnit < ActiveRecord::Migration
  def change
    rename_column :directory_organizational_units, :note, :about_text    
  end
end
