class AddNoteToOrganizationalUnit < ActiveRecord::Migration
  def change
	add_column :directory_organizational_units, :note, :string
  end
end
