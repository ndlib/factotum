class CreateDirectoryUnitTypes < ActiveRecord::Migration
  def change
    create_table :directory_unit_types do |t|
		t.string :name
		t.timestamps
    end
  end
end
