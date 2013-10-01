class ModifyDirectoryContactInformations < ActiveRecord::Migration
  def change
	remove_column :directory_contact_informations, :employee_id
	add_column :directory_contact_informations, :contactable_id, :integer
	remove_column :directory_contact_informations, :organizational_unit_id
	add_column :directory_contact_informations, :contactable_type, :string
  end
end
