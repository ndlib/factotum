class ChangeUnitType < ActiveRecord::Migration

  def change
	remove_column :directory_organizational_units, :unit_type_id
	add_column :directory_organizational_units, :type, :string
  end

end
