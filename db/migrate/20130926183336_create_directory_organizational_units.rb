class CreateDirectoryOrganizationalUnits < ActiveRecord::Migration
  def change
    create_table :directory_organizational_units do |t|
    	t.integer :unit_type_id
    	t.integer :parent_organizational_unit_id
    	t.string :name
      	t.timestamps
    end
  end
end
