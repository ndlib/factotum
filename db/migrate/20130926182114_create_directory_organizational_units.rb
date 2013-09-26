class CreateDirectoryOrganizationalUnits < ActiveRecord::Migration
  def change
    create_table :directory_organizational_units do |t|

      t.timestamps
    end
  end
end
